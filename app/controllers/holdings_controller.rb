class HoldingsController < ApplicationController
	before_action :set_holding, only: [:show, :edit, :update, :destroy]


	def index
		@holdings = Holding.order('opened_at,company_id').all
  end

  # GET /holdings/1
  # GET /holdings/1.json
  def show
  end

  # GET /holdings/new
  def new
    @holding = Holding.new
		#@holding.user = @current_user
  end

  # GET /holdings/1/edit
  def edit
  end

  # POST /holdings
  # POST /holdings.json
  def create
    @holding = Holding.new(holding_params)

    respond_to do |format|
      if @holding.save
        format.html { redirect_to @holding, notice: 'holding was successfully created.' }
        format.json { render action: 'show', status: :created, location: @holding }
      else
        format.html { render action: 'new' }
        format.json { render json: @holding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /holdings/1
  # PATCH/PUT /holdings/1.json
  def update
    respond_to do |format|
      if @holding.update(holding_params)
		@holding.calc_book_val
		@holding.portfolio.calc_book_val if @holding.portfolio
        format.html { redirect_to @holding, notice: 'holding was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @holding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holdings/1
  # DELETE /holdings/1.json
  def destroy
    @holding.destroy
    respond_to do |format|
      format.html { redirect_to holdings_url }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
		def set_holding
			@holding = Holding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
		def holding_params
			params.require(:holding).permit(:company_id, :book_value, :opened_at, :closed_at, :name, :description, :expense, :income, :user_id, :portfolio_id)
    end
end
