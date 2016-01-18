class Portfolio < ActiveRecord::Base
	has_many :holdings

	def calc_book_val()
		# TODO: Need to get the market value into the Holding and extract the sum here
		val_book = 0.00
		#val_exp = 0.00
		#val_in = 0.00
		self.holdings.each do |h|
			val_book += h.book_value
			#val_in += h.income
			#val_exp += h.expense
		end
		self.update(:book_cost => val_book)
	end

	
	
end
