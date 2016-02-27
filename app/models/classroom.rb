class Classroom < ActiveRecord::Base
  has_many :students, dependent: :destroy
  belongs_to :teacher, dependent: :destroy
end
