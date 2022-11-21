class RemoveEmployeeDetail < ActiveRecord::Migration[5.0]
  def change
    drop_table :employee_details,force: :cascade
  end
end
