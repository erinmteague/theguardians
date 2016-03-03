class CreateEcoFacts < ActiveRecord::Migration
  def change
    create_table :eco_facts do |t|
    	t.text :factoid

      t.timestamps null: false
    end
  end
end
