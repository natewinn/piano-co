class CustomersController < ApplicationController
	# before_action :authenticate_user!
	respond_to :html, :json

	def index
		@customers = Customer.all
	end

	def new
		@customer = Customer.new
	end

	def show
		@customer = Customer.find(params[:id])
		@piano = Piano.new
		@pianos = @customer.pianos.all
		@piano.customer_id = @customer.id
		@hash = Gmaps4rails.build_markers(@customer) do |customer, marker|
		  marker.lat customer.latitude
		  marker.lng customer.longitude
		  marker.infowindow "<a target='blank' href='https://www.google.com/maps/dir//#{customer.latitude},#{customer.longitude}/'>Directions to #{customer.first_name} #{customer.first_name}</a>"
		  marker.json({ title: customer.first_name })
		end
	end

	def create
		@customer = Customer.new(customer_params)
		@customer.company_id = current_user.company.id
		if @customer.save
			redirect_to customers_path
		else
			redirect_to new_customer_path
		end
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def update
		@customer = Customer.find(params[:id])
		@customer.update_attributes(customer_params)
		respond_with @customer
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