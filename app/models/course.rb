class Course < ApplicationRecord
  belongs_to :school
  has_many :users

end
