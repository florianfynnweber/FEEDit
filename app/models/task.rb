class Task < ApplicationRecord
  enum status: [:open, :closed]
end
