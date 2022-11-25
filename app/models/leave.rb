class Leave< ApplicationRecord
    belongs_to :employee
    validates :startdate, :enddate, :reason, presence: true
    after_validation :count_days 
    
    
    private

    def count_days
        leave = (enddate.to_date - startdate.to_date).to_i
        self.days = leave
        self.total_leaves = leave
    end
    

end
