class AddDepartmentRefToEmployeeDetails < ActiveRecord::Migration[5.0]
  def change
    change_table :employee_details do |t|
      t.belongs_to :department, index: true
    end
  end
end
