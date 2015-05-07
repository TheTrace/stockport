class Holding < ActiveRecord::Base
	has_many :transactions
end
