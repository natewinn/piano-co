class ServicesController < ApplicationController
	before_action :authenticate_user!

	def index
		@services = current_user.company.services
    @new_service = Service.new
	end

	def show
		@service = Service.find(params[:id])
	end

	def create
		@new_service = Service.new(service_params)
		if @new_service.save
			redirect_to services_path
		else
			redirect_to :back
		end
	end

	def edit
		@service = Service.find(params[:id])
	end

	def update
		@service = Service.find(params[:id])
		if @service.update_attributes(service_params)
			redirect_to services_path
		else
			redirect_to :back
		end
	end

	def destroy
		@service = Service.find(params[:id])
		if @service.destroy
			redirect_to services_path
		end
	end

	private

	def service_params
		params.require(:service).permit!
	end

end