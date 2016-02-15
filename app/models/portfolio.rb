class Portfolio < ActiveRecord::Base
	has_many :holdings

	def calc_book_val()
		# TODO: Need to get the market value into the Holding and extract the sum here
		val_book = 0.00
		val_mkt = 0.00
		#val_exp = 0.00
		#val_in = 0.00
		self.holdings.each do |h|
			val_book += h.book_value
			#val_in += h.income
			#val_exp += h.expense
			# This will all be done in the Holding in the future...
			if h.last_trans
				cur_val = h.company.current_price * h.last_trans.quantity
				cur_val = cur_val / 100 if h.company.currency.eql?(Company::CompanyCurrency::GBP)
				# Need to get current exchange rate (hard-coded here Feb-16)
				cur_val = cur_val * 0.69 if h.company.currency.eql?(Company::CompanyCurrency::USD)
				val_mkt += cur_val
			end
		end
		self.update(:book_cost => val_book, :mkt_value => val_mkt)
	end
	
end
