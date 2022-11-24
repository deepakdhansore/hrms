class SalariesController < ApplicationController
    def index 
      @salary = Salary.listing(params[:fromdate])
    end
end
