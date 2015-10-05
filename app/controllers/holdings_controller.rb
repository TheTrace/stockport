class HoldingsController < ApplicationController

	def index
		@holdings = Holding.order('company_id,opened_at').all
  end



  private
    # Use callbacks to share common setup or constraints between actions.
		def set_holding
			@holding = Holding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
		def holding_params
			params.require(:holding).permit(:company_id, :book_value, :opened_at, :closed_at)
    end
end
