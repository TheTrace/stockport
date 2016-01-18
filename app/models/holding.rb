class Holding < ActiveRecord::Base
	has_many :transactions
	belongs_to :company #, :order => "name DESC" ## Doesn't work!
	belongs_to :portfolio

	require 'action_view'
	include ActionView::Helpers::DateHelper  # to use distance_of_time_in_words
	
	def calc_book_val()
		val_in = 0.00
		val_exp = 0.00
		self.transactions.order(:trans_date).each do |t|
			#print t.total_cost.to_s + " cost\n"
			val_exp += t.expenses
			if t.trans_type.eql?(Transaction::TransTypes::SELL)
				val_in += t.consideration if !t.consideration.blank?
			elsif t.trans_type.eql?(Transaction::TransTypes::DIVIDEND)
				#if t.currency.eql?(Transaction::TransCurrency::GBP)
				#	val_in += t.div_gross.blank? ? t.div_net_total : t.div_gross
				#else
				val_in += t.div_net_total + t.expenses
				#end
			else
				val_exp += t.consideration if !t.consideration.blank?
			end
			#print val_in.to_s + "\n"
			#print val_exp.to_s + "\n"
		end
		# eventually just return "val"
		#self.book_value = val
		self.update(:income => val_in, :expense => val_exp, :book_value => val_in - val_exp)
	end
	
	def held()
		h = ""
		if opened_at
			if closed_at && closed_at > opened_at
				h = distance_of_time_in_words(closed_at, opened_at)
			else
				h = distance_of_time_in_words_to_now(opened_at)
			end
		end
		return h
	end
end
