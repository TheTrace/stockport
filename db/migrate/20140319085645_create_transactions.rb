class CreateTransactions < ActiveRecord::Migration
	def change
		create_table :transactions do |t|
			t.string :trans_type
			t.date :trans_date
			t.integer :company_id
			t.integer :quantity
			t.decimal :price, :precision => 10, :scale => 4
			t.decimal :consideration, :precision => 10, :scale => 4
			t.decimal :commission, :precision => 10, :scale => 4
			t.decimal :stamp_duty, :precision => 10, :scale => 4
			t.decimal :PTM_levy, :precision => 10, :scale => 4
			t.decimal :payable, :precision => 10, :scale => 4
			t.decimal :cost_percent, :precision => 10, :scale => 6
			t.string :bargin_ref
			t.decimal :avg_cost, :precision => 10, :scale => 4
			t.decimal :buy_limit, :precision => 10, :scale => 4
			t.string :currency
			t.decimal :x_rate, :precision => 10, :scale => 6
			t.date :ex_div_date
			t.date :payment_date
			t.date :issue_date
			t.decimal :div_price, :precision => 10, :scale => 4
			t.decimal :div_net_total,:precision => 10, :scale => 4
			t.text :person
			t.integer :user_id

			t.timestamps
		end
	end
end
