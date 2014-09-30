class Transaction < ActiveRecord::Base
	belongs_to :company

	class TransTypes
		BUY = "buy"
		SELL = "sell"
		DIVIDEND = "dividend"

		NAMES = {
			BUY => "Buy",
			SELL => "Sell",
			DIVIDEND => "Dividend"
		}

		ALL = [BUY, SELL, DIVIDEND]

		def self.for_select
			ALL.map{|t|[NAMES[t],t]}
		end
	end
end
