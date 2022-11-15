class EmployeeDetail < ApplicationRecord
    belongs_to :department
    enum gender: [ :male, :female ]
end
