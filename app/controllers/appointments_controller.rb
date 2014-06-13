class AppointmentsController < ApplicationController

	def index
		@appointments = Appointment.all
	end

	def new
		@new_appointment = Appointment.new
	end

	def show
		@appointment = Appointment.find(params[:id])
	end

	def create
		@new_appointment = Appointment.new(appointment_params)
		if @new_appointment.save
			redirect_to :back
		end
	end

	def edit
		@appointment = Appointment.find(params [:id])
	end

	def update
		@appointment = Appointment.find(params[:id])
		if @appointment.update_attributes(appointment_params)
			redirect_to appointments_path
		else
			redirect_to edit_appointment_path
		end
	end

	def destroy
		@appointment = Appointment.find(params[:id])
		@appointment.destroy
			redirect_to appointment_path
	end

	private

	def appointment_params
		params.require(:appointment).permit(:start_time, :end_time, :work_order_id)
	end

end
