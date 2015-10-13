class Holding < ActiveRecord::Base
	has_many :transactions
	belongs_to :company #, :order => "name DESC" ## Doesn't work!

	
	def calc_book_val()
		val_in = 0.00
		val_exp = 0.00
		self.transactions.order(:trans_date).each do |t|
			#print t.total_cost.to_s + " cost\n"
			if t.trans_type.eql?(Transaction::TransTypes::SELL)
				val_in += t.total_cost
			elsif t.trans_type.eql?(Transaction::TransTypes::DIVIDEND)
				val_in += t.div_net_total
			else
				val_exp += t.total_cost
			end
			#print val.to_s + "\n"
		end
		# eventually just return "val"
		#self.book_value = val
		self.update(:income => val_in, :expense => val_exp, :book_value => val_in - val_exp)
	end
end
