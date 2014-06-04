class Company < ActiveRecord::Base
	has_many :transactions

	def self.for_select
		Company.order("companies.name,companies.ticker").map{|c|[[c.ticker,c.name].join(" "),c.id]}
	end 

end
