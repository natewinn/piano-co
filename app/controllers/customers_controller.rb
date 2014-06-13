class CustomersController < ApplicationController

	def index
		@customers = Customers.all
	end

	def new
		@new_customer = Customer.new
	end

	def show
		@customers = Customers.find(params[:id])
	end

	def create
		@new_customers = Customers.new(customer_params)
		if @new_customers.save
			redirect_to :back
		end
	end

	def edit
		@customer = Customer.find(params [:id])
	end

	def update
		@customer = Customer.find(params[:id])
		if @customer.update_customer(customer_params)
			redirect_to customer_path
		else
			redirect_to edit_customer_path
		end
	end

	def destroy
		@customer = Customer.find(params[:id])
		@customer.destroy
			redirect_to customer_path
	end

	private

	def customer_params
		params.require(:customer).permit!
	end

end