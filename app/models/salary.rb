class Salary < ApplicationRecord
  belongs_to :employee
  
  validates :fromdate,:todate, presence: true
  validates :salary, presence: true 
  

  def self.listing(salary)
    order(created_at: :desc)
  end
 # before_create :count_salary

 #def count_salary
  #  puts "i am in"
  # puts Employee.leaves.any?
    #    puts no_of_days = 30 - Employee.leaves.count  
     #   puts "i am in"
      #puts self.salary  
     # end
  #end

end
