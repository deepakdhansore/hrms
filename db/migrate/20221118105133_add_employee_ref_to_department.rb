class AddEmployeeRefToDepartment < ActiveRecord::Migration[5.0]
  def change
    add_reference :departments, :employee, index: true
  end
end
