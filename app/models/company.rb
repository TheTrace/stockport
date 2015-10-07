class Company < ActiveRecord::Base
	has_many :transactions

	class Bourse
		LSE = "LSE"
		NYSE = "NYSE"
		NASDAQ = "NASDAQ"

		NAMES = {
			LSE => "London Stock Exchange",
			NYSE => "New York Stock Exchange",
			NASDAQ => "NASDAQ"
			# National Association of Securities Dealers Automated Quotations
		}

		ALL = [LSE, NYSE, NASDAQ]

		def self.for_select
			ALL.map{|t|[NAMES[t],t]}
		end
	end
  
	class Country
		UK = "United Kingdom"
		US = "United States"

		NAMES = {
			UK => "United Kingdom",
			US => "United States of America"
		}

		ALL = [UK, US]

		def self.for_select
			ALL.map{|t|[NAMES[t],t]}
		end
	end

	def self.for_select
		Company.order("companies.name,companies.ticker").map{|c|[[c.ticker,c.name].join(" "),c.id]}
	end 

end
