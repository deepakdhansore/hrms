# frozen_string_literal: true

# app/controllers/employees_controller.rb
class EmployeesController < ApplicationController
  before_action :authenticate_employee!

  def index
    @employee = current_employee
  end

  def show
    @employee = current_employee
  end

  def send_mail
    WelcomeMailer.send_welcome_mail.deliver_now!
  end
end
