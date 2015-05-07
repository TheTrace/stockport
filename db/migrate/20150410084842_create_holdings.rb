class CreateHoldings < ActiveRecord::Migration
  def change
    create_table :holdings do |t|
			t.integer :company_id
			t.decimal :book_value, :precision => 10, :scale => 4
			t.date :opened_at
			t.date :closed_at
			
      t.timestamps
    end
		
		remove_column :transactions, :payable
		remove_column :transactions, :cost_percent
		remove_column :transactions, :avg_cost
		
		add_column :transactions, :holding_id, :integer
  end
end
