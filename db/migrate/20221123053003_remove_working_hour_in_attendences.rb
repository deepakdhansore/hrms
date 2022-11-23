class RemoveWorkingHourInAttendences < ActiveRecord::Migration[5.0]
  def change
    remove_column :attendances, :working_hour ,:integer

  end
end
