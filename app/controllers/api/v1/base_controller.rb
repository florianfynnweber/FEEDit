# frozen_string_literal: true

class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  def destroy_session
    request.session_options[:skip] = true
  end

  def api_error(status: 500, error: [])
    head status: status && return if error.empty?
    render(json: jsonapi_format(error),
           status: status)
  end

  def invalid_resource
    return api_error(status: 422, error: "Invalid resource")
  end

  def not_found
    return api_error(status: 404, error: "Not found")
  end

  def unauthenticated
    return api_error(status: 401, error: "Unauthorized")
  end

  def forbidden
    return api_error(status: 403, error: "Forbidden")
  end

  def bad_request
    return api_error(status: 400, error: "Bad request. Parameter missing?")
  end

  def paginate(resource)
    resource = resource.page(params[:page] || 1)
    return resource
  end

  def blank_nil?(*args)
    args.each do |t|
      if t.blank? || t.nil?
        return true
      else
        return false
      end
    end
  end

  def meta_attributes(object)
    {
    }
  end


  def authenticate_client!
    key = request.headers["X-CMS-Auth"]
    key = key.blank? ? nil : key
    if key && ApiClient.exists?(auth_key: key)
      client = ApiClient.find_by(auth_key: key)
    else
      return unauthenticated
    end
  end

  def render_parameter_validation_error(exception)
    return api_error(
      status: 400,
      error: {
          error: "Parameter validation error: %s" % [exception.message],
          params: exception.params,
      }
    )
  end


  private
  begin
    def jsonapi_format(error)
      if error.is_a? String
        return {error: error}
      end
      return error.to_json()
    end
  end
end
