class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :username
      t.string :password_digest
      t.string :school
      t.string :grade
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
