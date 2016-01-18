class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
			t.string :name
			t.text :description
			t.integer :user_id
			t.decimal :book_cost, :precision => 10, :scale => 4
			t.decimal :mkt_value, :precision => 10, :scale => 4

      t.timestamps
    end
		
		add_column :holdings, :portfolio_id, :integer
		add_column :transactions, :target_price, :decimal, :precision => 10, :scale => 4, :default => 0.0
		add_column :transactions, :stop_price, :decimal, :precision => 10, :scale => 4, :default => 0.0
		
		add_column :companies, :current_price, :decimal, :precision => 10, :scale => 4, :default => 0.0
		add_column :companies, :price_at_str, :string
		add_column :companies, :price_updated_at, :datetime
		add_column :companies, :high52wk, :decimal, :precision => 10, :scale => 4, :default => 0.0
		add_column :companies, :low52wk, :decimal, :precision => 10, :scale => 4, :default => 0.0
		add_column :companies, :open, :decimal, :precision => 10, :scale => 4, :default => 0.0
		add_column :companies, :range, :decimal, :precision => 10, :scale => 4, :default => 0.0
		add_column :companies, :mkt_capitalisation, :string
		add_column :companies, :price_earnings, :decimal, :precision => 10, :scale => 4, :default => 0.0
		add_column :companies, :div_yield_pc, :decimal, :precision => 10, :scale => 4, :default => 0.0
		add_column :companies, :earnings_per_share, :decimal, :precision => 10, :scale => 4, :default => 0.0
		add_column :companies, :beta, :decimal, :precision => 10, :scale => 4, :default => 0.0
		add_column :companies, :industry, :string
	
  end
end
