class Attendance < ApplicationRecord
      
    belongs_to :employee

    #validation
      validates :date , :time_in, :time_out, presence: true
      validates :date, uniqueness: { scope: :employee_id }
    # call back 
      after_validation :count_total_hour
      

  private
   
   def count_total_hour
     if total_hour.blank?
      total_hour = (time_out - time_in)
      self.total_hour = Time.at(total_hour)
      self.total_hour = self.total_hour.strftime("%H:%M")
    end
   end
    
end
#Employee.first.attendances.create!(date:Date.parse("2022-11-24"),time_in:Time.zone.parse("9:00 AM"),time_out:Time.zone.parse("7:00 PM"))
