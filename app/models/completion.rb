class Completion < ActiveRecord::Base
	belongs_to :completed, class_name: "Lesson"
  belongs_to :completer, class_name: 'Student'

    validates :completed_id, uniqueness: {scope: :completer_id}
    validates :completer_id, uniqueness: {scope: :completed_id}
end
