class CompaniesController < ApplicationController
	before_action :authenticate_user!

	def index
		@companies = Company.all
	end

	def new
		@new_company = Company.new
	end

	def show
		@company = Company.find(params[:id])
	end

	def create
		@new_company = Company.new(company_params)
		if @new_company.save
			current_user.company_id = @new_company.id
			current_user.save
			redirect_to customers_path
		else 
			redirect_to customers_path
		end
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
		@company = Company.find(params[:id])
		if @company.update_attributes(company_params)
			redirect_to company_path
		else
			redirect_to edit_companies_path(:id)
		end
	end

	def destroy
		@company = Company.find(params[:id])
		@company.destroy
			redirect_to companies_path
	end

	private

	def company_params
		params.require(:company).permit!
	end

end