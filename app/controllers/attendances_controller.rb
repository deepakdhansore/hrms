class AttendancesController < ApplicationController
   
  def new
     @employee = Employee.find(params[:employee_id])
  end
  
  def create
    @employee = Employee.find(params[:employee_id])
    @attendance = @employee.attendances.create(attendance_params)
    redirect_to employees_path

  end
  
  private
   def attendance_params
    params.require(:attendance).permit(:time_in, :time_out, :date, :total_hour)
   end
end