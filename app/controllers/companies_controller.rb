class CompaniesController < ApplicationController

	before_action :set_company, only: [:show, :edit, :update, :destroy]

	def index
		@companies = Company.all
	end

	def show
	end

	# GET /company/new
	def new
		@company = Company.new
	end

	# GET /company/1/edit
	def edit
	end

	# POST /company
	# POST /company.json
	def create
		@company = Company.new(company_params)

		respond_to do |format|
			if @company.save
				format.html { redirect_to @company, notice: 'Company was successfully created.' }
				format.json { render action: 'show', status: :created, location: @company }
			else
				format.html { render action: 'new' }
				format.json { render json: @company.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /company/1
	# PATCH/PUT /company/1.json
	def update
		respond_to do |format|
			if @company.update(company_params)
				format.html { redirect_to @company, notice: 'Company was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @company.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /company/1
	# DELETE /company/1.json
	def destroy
		@company.destroy
		respond_to do |format|
			format.html { redirect_to company_url }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_company
			@company = Company.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def company_params
			params.require(:company).permit(:name, :ticker, :description, :reference, :currency, :country, :bourse, :sector, :fyear_inc)
		end

end
