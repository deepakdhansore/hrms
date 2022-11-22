class FixColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :attendances, :status_date
    remove_column :attendances, :in_time
    remove_column :attendances, :out_time

    add_column :attendances, :date , :datetime
    add_column :users, :time_in, :datetime
    add_column :users, :time_out, :datetime

  end
end
