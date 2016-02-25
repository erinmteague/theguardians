class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password_digest
      t.string :school
      t.string :grade

      t.timestamps null: false
    end
  end
end
