class EmployeesController < ApplicationController
	before_action :authenticate_user!

	def index
		@employees = Employees.all
	end

	def new
		@new_employee = Employee.new
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def create
		@new_employee = Employee.new(employee_params)
		if @new_employee.save
			redirect_to :back
		end
	end

	def edit
		@employee = Employee.find(params [:id])
	end

	def update
		@employee = Employee.find(params[:id])
		if @employee.update_employee(employee_params)
			redirect_to employee_path
		else
			redirect_to edit_employee_path
		end
	end

	def destroy
		@employee = Employee.find(employee[:id])
		@employee.destroy
			redirect_to employee_path
	end

	private

	def employee_params
		params.require(:employee).permit!
	end

end
