# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || extract_locale_from_header || I18n.default_locale
  end

  def default_url_options
    {locale: I18n.locale}
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  private
  ##
  # Extract the preferred language from the browser request header
  def extract_locale_from_header
    if request.env["HTTP_ACCEPT_LANGUAGE"]
      request.env["HTTP_ACCEPT_LANGUAGE"].scan(/^[a-z]{2}/).first
    end
  end
end
