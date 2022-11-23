class EmployeesController < ApplicationController
    protect_from_forgery with: :exception
  
    before_filter :authenticate_employee!
    respond_to :html, :json
    
    before_action :authenticate_employee!
    protected

    


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name,:last_name, :email,
       :phone_number, :address, :age,:hire_date,:date_of_birth,:city,
       :country,:father_name,:mother_name, :password)}

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name,:last_name, :email,
      :phone_number, :address, :age, :gender,:hire_date,:date_of_birth,:city,
      :country,:father_name,:mother_name, :password)}
  end
end
