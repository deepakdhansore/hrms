class SalariesController < ApplicationController
    def index 
      @employee = current_employee
      @salary = @employee.salaries.listing(params[:fromdate])
    end
end
