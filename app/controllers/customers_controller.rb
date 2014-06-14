class CustomersController < ApplicationController

	def index
		@customers = Customer.all
	end

	def new
		@new_customer = Customer.new
		@new_customer.phone_numbers.build
		@new_customer.contacts.build
		@new_customer.emails.build
		@new_customer.addresses.build
	end

	def show
		@customers = Customer.find(params[:id])
	end

	def create
		@new_customer = Customer.new(customer_params)
		debugger
		@new_customers.save ? redirect_to(customer_path(@customer)) : render(:action => :new)
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