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
    exp += commission.to_f if !commission.blank?
    exp += stamp_duty.to_f if !stamp_duty.blank?
    exp += self.PTM_levy.to_f if !self.PTM_levy.blank?
    #transaction.commission + transaction.stamp_duty + transaction.PTM_levy
    exp
  end
  
  def total_cost
    tc = 0.00
    tc += consideration if !consideration.blank?
    tc += expenses
  end
  
  def avg_cost
    if !total_cost.blank? && !quantity.blank? && quantity != 0
      total_cost * 100 / quantity
    else
      0.00
    end
  end
  
  def percent_cost
    if !expenses.blank? && !total_cost.blank? && total_cost != 0
		  expenses * 100 / total_cost
    else
      0.00
    end
  end
	
	def currency_format(val)
		if self.currency.eql?(TransCurrency::USD)
			return "$ " + val.to_s
		else
			return val.to_s + " p"
		end
	end
end
