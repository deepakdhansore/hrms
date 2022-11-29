# frozen_string_literal: true

class AddTotalHourToEmpAttendances < ActiveRecord::Migration[5.0]
  def change
    add_column :emp_attendances, :total_hour, :datetime
  end
end
