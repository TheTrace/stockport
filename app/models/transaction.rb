class Transaction < ActiveRecord::Base
	belongs_to :company
	belongs_to :holding
  belongs_to :user

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
  
	class TransCurrency
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

  def expenses
    exp = 0.00
		if trans_type.eql?(TransTypes::BUY) || trans_type.eql?(TransTypes::SELL)
			exp += commission.to_f if !commission.blank?
			exp += stamp_duty.to_f if !stamp_duty.blank?
			exp += self.PTM_levy.to_f if !self.PTM_levy.blank?
			#transaction.commission + transaction.stamp_duty + transaction.PTM_levy
		else
			# Can safely(?) trust div_gross and div_net_total for UK stocks
			#if currency.eql?(TransCurrency::GBP)
			#	exp += div_gross.to_f - div_net_total.to_f if div_gross.to_f > 0.0
			#else
				exp += div_tax_credit.to_f
			#end
		end
    exp
  end
  
  def total_cost
		# This is the "net cash flow" so "money in" or "money out" of my purse.
		# It will be "money in" if it's a dividend or sell -> so take expenses off
    tc = 0.00
		tc += consideration if !consideration.blank? && !trans_type.eql?(TransTypes::DIVIDEND)
		tc += div_gross.to_f > 0.0 ? div_gross : div_net_total if trans_type.eql?(TransTypes::DIVIDEND)
		if trans_type.eql?(TransTypes::BUY)
    	tc += expenses
		else
			tc -= expenses
		end
		tc
  end
  
  def avg_cost
    if !total_cost.blank? && !quantity.blank? && quantity != 0
      total_cost * 100 / quantity
    else
      0.00
    end
  end
  
  def percent_cost
		pct = 0.0
		if !expenses.blank?
			if trans_type.eql?(TransTypes::BUY)
				if !total_cost.blank? && total_cost != 0
					pct = expenses * 100 / total_cost
				end
			elsif trans_type.eql?(TransTypes::SELL)
				if !consideration.blank? && consideration != 0
					pct = expenses * 100 / consideration
				end
			else
				pct = div_gross.to_f > 0.0 ? (expenses * 100 / div_gross) : 0.0
			end
		end
		pct
  end
	
	def currency_format(val)
		if not val.blank?
			if self.currency.eql?(TransCurrency::USD)
				return format("$ %.2f", val)
			else
				return format("%.2f p", val)
			end
		else
			return ""
		end
	end
end
