class Student < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :classroom
  has_many :lessons

  has_secure_password
  validates_presence_of :password, on: :create
end
