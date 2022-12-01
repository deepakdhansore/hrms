class AddLeavesTakenToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :leaves_taken, :integer
  end
end
