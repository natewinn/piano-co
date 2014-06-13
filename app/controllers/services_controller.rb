class ServicesController < ApplicationController

	def index
		@services = Services.all
	end

	def new
		@new_service = Service.new
	end

	def show
		@service = Service.find(params[:id])
	end

	def create
		@new_service = Service.new(service_params)
		if @new_service.save
			redirect_to :back
		end
	end

	def edit
		@service = Service.find(params [:id])
	end

	def update
		@service = Service.find(params[:id])
		if @service.update_service(service_params)
			redirect_to service_path
		else
			redirect_to edit_service_path
		end
	end

	def destroy
		@service = Service.find(params[:id])
		@service.destroy
			redirect_to service_path
	end

	private

	def service_params
		params.require(:service).permit(:start_time, :end_time, :off_start_time, :off_end_time, :phone, :company_id)
	end

end