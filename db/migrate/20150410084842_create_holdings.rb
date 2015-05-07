class CreateHoldings < ActiveRecord::Migration
  def change
    create_table :holdings do |t|
			t.integer :company_id
			t.decimal :current_value, :precision => 10, :scale => 4
			t.date :opening_date
			t.date :closing_date
			
      t.timestamps
    end
		
		create_table :links do |l|
			l.integer :company_id
			l.integer :transaction_id
			l.integer :holding_id
			
			l.timestamps
		end
		
		remove_column :transactions, :payable
		remove_column :transactions, :cost_percent
		remove_column :transactions, :avg_cost
		
  end
end
