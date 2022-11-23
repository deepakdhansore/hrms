class AttendancesController < ApplicationController
    def new
        
    end
    def create
        @employee = current_employee.id
        @attendance = @employee.attendances.create(attendance_params)
       redirect_to article_path(@article)
    end

private
def attendance_params
    params.require(:attendance).permit(:time_in, :time_out, :date)
end
end