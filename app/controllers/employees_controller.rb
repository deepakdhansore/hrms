class EmployeesController < ApplicationController
    
    
    before_action :authenticate_employee!
    
    def index
        @employee = current_employee
    end

    def show 
      @employee = current_employee
    end
    
   

  
end
