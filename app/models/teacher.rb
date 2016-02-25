class Teacher < ActiveRecord::Base
	has_many :students
	has_many :lessons
	has_many :classrooms

	has_secure_password
  validates_presence_of :password, on: :create
end
