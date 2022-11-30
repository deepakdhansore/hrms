# frozen_string_literal: true

# app/controllers/leaves_controller.rb
class LeavesController < ApplicationController
  def index
    @employee = current_employee
    @leave = @employee.leaves.all
  end

  def new
    @employee = current_employee
  end

  def create
    @employee = current_employee
    @leave = @employee.leaves.create(leave_params)
    redirect_to employee_leaves_path(@employee)
  end

  private

  def leave_params
    params.require(:leave).permit(:startdate, :enddate, :reason)
  end
end
