class Feedback < ApplicationRecord
  has_one :user
  has_many :comments, dependent: :destroy
end
