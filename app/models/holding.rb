class Holding < ActiveRecord::Base
	has_many :transactions
	belongs_to :company
	
end
