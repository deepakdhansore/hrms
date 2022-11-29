# frozen_string_literal: true

class AttendancesController < ApplicationController
  def new
    @employee = Employee.find(params[:employee_id])
    @attendance = @employee.attendances.new
  end

  def create
    @employee = Employee.find(params[:employee_id])
    @attendance = @employee.attendances.build(attendance_params)
    if @attendance.save
      DailyStatusMailer.send_mail.deliver_later!
      redirect_to employees_path
    else
      render 'new'
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:time_in, :time_out, :date, :total_hour)
  end
end
