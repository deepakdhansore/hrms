class Attendance < ApplicationRecord
    belongs_to :employee

    #validation

   # validates :status_date, presence: true
end
