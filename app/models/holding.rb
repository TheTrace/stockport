class Holding < ActiveRecord::Base
	has_many :transactions
	belongs_to :company #, :order => "name DESC" ## Doesn't work!
	belongs_to :portfolio

	has_one :last_trans, :class_name => "Transaction", :limit => 1, :order => "trans_date DESC"

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
				val_in += t.div_net_total.to_f + t.expenses
				#end
			else
				val_exp += t.consideration if !t.consideration.blank?
			end
			#print val_in.to_s + "\n"
			#print val_exp.to_s + "\n"
		# eventually just return "val"
		end
		#self.book_value = val
		self.update(:income => val_in, :expense => val_exp, :book_value => val_in - val_exp)
	end

	def calc_mkt_val()
		# Add this in when we have a "market_value" field in the holding
		#						- if holding.last_trans
		#					- cur_val = holding.company.current_price * holding.last_trans.quantity
		#					- if holding.company.currency.eql?(Company::CompanyCurrency::GBP)
		#						- cur_val = cur_val / 100
		#						- currency = "&pound;"
		#					- else
		#						- currency = "$"
		#					= currency.html_safe
		#					= format("%.2f", cur_val)
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

	def closed?()
		c = false
		if opened_at
			if closed_at && closed_at > opened_at
				c = true
			end
		end
		return c
	end

end
