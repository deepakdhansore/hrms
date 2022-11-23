class Attendance < ApplicationRecord
      
    belongs_to :employee

    #validation
      validates :date , :time_in, :time_out, presence: true
 
    # call back 
      after_validation :count_total_hour
      

   private

   def count_total_hour
   
     
    self.working_hour = (time_out - time_in)/ 3600 if working_hour.blank?
     
  
   end
    
end
