class Holding < ActiveRecord::Base
	has_many :transactions
	belongs_to :company #, :order => "name DESC" ## Doesn't work!

	
	def calc_book_val()
		val = 0.00
		self.transactions.order(:trans_date).each do |t|
			#print t.total_cost.to_s + " cost\n"
			if t.trans_type.eql?(Transaction::TransTypes::SELL)
				val -= t.total_cost
			elsif t.trans_type.eql?(Transaction::TransTypes::DIVIDEND)
				val += t.div_net_total
			else
				val += t.total_cost
			end
			#print val.to_s + "\n"
		end
		# eventually just return "val"
		#self.book_value = val
		self.update(:book_value => val)
	end
end
