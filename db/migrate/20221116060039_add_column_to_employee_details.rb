class AddColumnToEmployeeDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :employee_details, :username, :string
    add_column :employee_details, :password, :string
    add_column :employee_details, :designation, :string
  end
end
