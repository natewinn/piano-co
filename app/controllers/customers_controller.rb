class CustomersController < ApplicationController
	before_action :authenticate_user!

	def index
		@customers = current_user.company.customers
	end

	def new
		@new_customer = Customer.new
		@new_customer.phone_numbers.build
		@new_customer.contacts.build
		@new_customer.eaddresses.build
		@new_customer.addresses.build
	end

	def show
		@customer = Customer.find(params[:id])
		@phone_numbers = @customer.phone_numbers
		@addresses = @customer.addresses
	end

	def create
		@customer = Customer.new(customer_params)
		@customer.save
			redirect_to customers_path
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def update
		@customer = Customer.find(params[:id])
		if @customer.update_customer(customer_params)
			redirect_to customers_path
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