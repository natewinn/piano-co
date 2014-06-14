class CustomersController < ApplicationController
	before_action :authenticate_user!

	def index
		@company = current_user.company
		@customer = @company.customers
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
	end

	def create
		@customer = Customer.new(customer_params)
		@customer.save
			redirect_to customer_path(@customer)
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

	def full_street_address
  	[@customer.address_1, @customer.address_2, @customer.city, @customer.state, @customer.country].compact.join(', ')
	end

	private

	def customer_params
		params.require(:customer).permit!
	end

end