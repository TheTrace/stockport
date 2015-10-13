class UpdateHoldingsFields < ActiveRecord::Migration
  def change
		
		add_column :holdings, :name, :string
		add_column :holdings, :description, :string
		add_column :holdings, :expense, :decimal, :precision => 10, :scale => 4
		add_column :holdings, :income, :decimal, :precision => 10, :scale => 4
		add_column :holdings, :user_id, :integer
  end
end
