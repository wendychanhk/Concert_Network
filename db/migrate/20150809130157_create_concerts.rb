class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
		t.string :band 
		t.string :venue
		t.string :city
		t.integer :price
		t.date :date 
    t.text :description

      t.timestamps null: false
    end
  end
end
