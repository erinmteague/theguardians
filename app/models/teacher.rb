class Teacher < ActiveRecord::Base
	has_many :students, dependent: :destroy
	has_many :lessons
	has_many :classrooms, dependent: :destroy

	has_secure_password
  validates_presence_of :password, on: :create
end
