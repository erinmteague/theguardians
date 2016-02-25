class AddStudentArrayToClassroom < ActiveRecord::Migration
  def change
  	add_column :classrooms, :student_array, :text, array: true, default: []
  end
end
