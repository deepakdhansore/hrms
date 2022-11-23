class AddWorkingHourInAttendences < ActiveRecord::Migration[5.0]
  def change
    add_column :attendances, :working_hour, :datetime
  end
end
