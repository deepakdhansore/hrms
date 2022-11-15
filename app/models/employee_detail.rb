class EmployeeDetail < ApplicationRecord
    belongs_to :department
    has_many :emp_attendances
    enum gender: [ :male, :female ]
end
