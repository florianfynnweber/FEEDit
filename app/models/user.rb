# frozen_string_literal: true

class User < ApplicationRecord
  # Include default users modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
  validates :email, presence: true, length: {maximum: 256},
            uniqueness: {case_sensitive: false}
  belongs_to :school
  has_many :comments
  has_many :feedbacks
  # enum levels: [:parent, :student, :teacher, :admin]
end
