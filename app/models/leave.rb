class Leave< ApplicationRecord
    belongs_to :employee
    validates :startdate, :enddate, :reason, presence: true
    
    
end
