class Submission < ApplicationRecord
  has_many :users
  has_one :feedback
  has_one :task
end
