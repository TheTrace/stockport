class CompaniesController < ApplicationController
require 'csv'
require 'open-uri'

	before_action :set_company, only: [:show, :edit, :update, :destroy]

	def index
		@companies = Company.order("name,ticker").all
	end

	def show
		#connection = Net::HTTP.new(url)
		#response = ""
		#connection.start do |http|
			#req = Net::HTTP::Get.new(stock+flags)
			#response = http.request(req)
		#end
		#response.body.gsub!(/\0/, '') if response
		#@new_price = IO.binread(response.body) if response
		tick = @company.ticker
		tick += ".L" if @company.bourse.eql?("LSE")
		@new_price = read_stock(tick)
	end

	def read_stock(ticker)
		return "" if ticker.blank?
		url = "http://finance.yahoo.com/d/quotes.csv?s="
		#stock = "TSCO.L"
		#flags = "&f=sn"
		flags = "&f=l1d1t1c"
		data = []
		begin
			open(url+ticker+flags) do |f|
				data = CSV.parse f
			end
		rescue IOError => e
			# Silently catch the exception ...
		end

		return data
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
			params.require(:company).permit(:name, :ticker, :description, :reference, :currency, :country, :bourse, :sector, :year_inc, :mkt_sector, :mkt_segment, :www_address, :isin, :share_type)
		end

end
