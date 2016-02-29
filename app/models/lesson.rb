class Lesson < ActiveRecord::Base
	validates_presence_of :title, :body, :common_core

	has_many :completions, foreign_key: :completed_id
  has_many :completers, through: :completions, source: :completer, dependent: :destroy
end
