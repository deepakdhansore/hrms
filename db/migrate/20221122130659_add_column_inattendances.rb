# frozen_string_literal: true

class AddColumnInattendances < ActiveRecord::Migration[5.0]
  def change
    add_column :attendances, :time_in, :datetime
    add_column :attendances, :time_out, :datetime
    remove_column :attendances, :total_hour, :datetime
    add_column :attendances, :working_hour, :integer
  end
end
