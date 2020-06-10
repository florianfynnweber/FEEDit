class Course < ApplicationRecord
  has_one :school
  has_many :users

end
