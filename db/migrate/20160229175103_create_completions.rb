class CreateCompletions < ActiveRecord::Migration
  def change
    create_table :completions do |t|
      t.integer :completed_id
      t.integer :completer_id

      t.timestamps null: false
    end
  end
end
