class CreateWrittenResponses < ActiveRecord::Migration
  def change
    create_table :written_responses do |t|
      t.references :student, index: true, foreign_key: true
      t.references :lesson, index: true, foreign_key: true
      t.text :response

      t.timestamps null: false
    end
  end
end
