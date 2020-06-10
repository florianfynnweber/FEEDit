class Submission < ApplicationRecord
  has_many :users
  has_one :feedback
  has_one :task

  enum status: [:open, :submitted, :to_late]
end
