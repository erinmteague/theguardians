class Student < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :classroom
  has_many :lessons
  has_many :writtenresponses

  has_many :completions, foreign_key: :completer_id
  has_many :completed, through: :completions, source: :completed, dependent: :destroy

  has_secure_password
  validates_presence_of :password, on: :create
end
