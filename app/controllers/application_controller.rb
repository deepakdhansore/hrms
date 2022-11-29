# frozen_string_literal: true

# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:first_name, :last_name, :email,
               :phone_number, :address, :age, :hire_date, :date_of_birth, :city,
               :country, :father_name, :mother_name, :password)
    end

    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:first_name, :last_name, :email,
               :phone_number, :address, :age, :gender, :hire_date, :date_of_birth, :city,
               :country, :father_name, :mother_name, :password)
    end
  end
end
