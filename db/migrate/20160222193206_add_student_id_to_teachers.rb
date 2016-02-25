class AddStudentIdToTeachers < ActiveRecord::Migration
  def change
    add_reference :teachers, :student, index: true, foreign_key: true
  end
end
