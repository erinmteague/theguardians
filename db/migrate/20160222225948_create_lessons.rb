class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :body
      t.string :common_core

      t.timestamps null: false
    end
  end
end
