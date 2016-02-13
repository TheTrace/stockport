class Company < ActiveRecord::Base
	has_many :transactions
	has_many :holdings

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

	class CompanyCurrency
		GBP = "gbp"
		USD = "usd"
		
		NAMES = {
			GBP => "£ GB",
			USD => "$ US"
		}
		
		ALL = [GBP, USD]
		
		def self.for_select
			ALL.map{|t|[NAMES[t],t]}
		end
	end

	class Sector
		ENERGY = "energy"
		MATERIAL = "materials"
		INDUSTRIAL = "industrials"
		CYCLICAL = "cyclical"
		NONCYCLICAL = "non-cyclical"
		FINANCIAL = "financials"
		HEALTH = "healthcare"
		TECHNOLOGY = "technology"
		TELECOM = "telecomms"
		UTILITY = "utilities"

		NAMES = {
			ENERGY => "Energy",
			MATERIAL => "Basic Materials",
			INDUSTRIAL => "Industrials",
			CYCLICAL => "Cyclical Consumer Goods & Services",
			NONCYCLICAL => "Non-Cyclical Consumer Goods & Services",
			FINANCIAL => "Financials",
			HEALTH => "Healthcare",
			TECHNOLOGY => "Technology",
			TELECOM => "Telecommunications Services",
			UTILITY => "Utilities",
		}

		ALL = [ENERGY, MATERIAL, INDUSTRIAL, CYCLICAL, NONCYCLICAL, FINANCIAL, HEALTH, TECHNOLOGY, TELECOM, UTILITY]
		def self.for_select
			ALL.map{|t|[NAMES[t],t]}
		end
	end
	
	def self.for_select
		Company.order("companies.name,companies.ticker").map{|c|[[c.ticker,c.name].join(" "),c.id]}
	end 

	def currency_format(val)
		if not val.blank?
			if self.currency.eql?(CompanyCurrency::USD)
				return format("$ %.2f", val)
			else
				return format("%.2f p", val)
			end
		else
			return ""
		end
	end

	def update_details(details)
		# Details - currently csv format, will be JSON
		price_a = details.join(',')
		# debug(price_a)
		price_a = price_a.split(',')
		self.current_price = price_a[0]
		the_date = price_a[1].split('/')
		self.price_at_str = price_a[2].to_time.strftime('%H:%M ') + (the_date[2] + "-" + the_date[0] + "-" + the_date[1]).to_date.strftime('%d-%b-%Y')
		the_time = Time.new
		self.price_updated_at = the_time
		self.save
	end
end
