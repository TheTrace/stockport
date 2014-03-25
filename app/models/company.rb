class Company < ActiveRecord::Base
	has_many :transactions
end
