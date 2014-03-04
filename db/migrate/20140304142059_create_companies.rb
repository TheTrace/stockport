class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
		t.string :name
		t.string :ticker
		t.text :description
		t.text :reference
		t.string :currency
		t.string :country
		t.string :bourse
		t.string :sector
		t.date :year_inc

      t.timestamps
    end
  end
end
