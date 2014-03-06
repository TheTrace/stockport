class AddFieldsToCompany < ActiveRecord::Migration
  def change
  	change_column :companies, :year_inc, :integer
  	add_column :companies, :mkt_sector, :string
  	add_column :companies, :mkt_segment, :string
  	add_column :companies, :www_address, :string
  	add_column :companies, :isin, :string
  	add_column :companies, :share_type, :string
  end
end
