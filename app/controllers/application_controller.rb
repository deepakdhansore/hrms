class ApplicationController < ActionController::Base
  
  #before_action :configure_permitted_parameters, if: :devise_controller?

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