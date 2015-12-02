class ModifyTransactionDividend < ActiveRecord::Migration
  def change
		
		add_column :transactions, :div_tax_rate, :decimal, :precision => 10, :scale => 4, :default => 0.0
		add_column :transactions, :div_tax_credit, :decimal, :precision => 10, :scale => 4, :default => 0.0
		add_column :transactions, :div_gross, :decimal, :precision => 10, :scale => 4, :default => 0.0
		
		add_column :companies, :address, :text
		add_column :companies, :logo, :string

  end
end
