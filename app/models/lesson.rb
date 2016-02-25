class Lesson < ActiveRecord::Base
	validates_presence_of :title, :body, :common_core
end
