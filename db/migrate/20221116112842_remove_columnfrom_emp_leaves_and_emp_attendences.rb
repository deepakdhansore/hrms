class RemoveColumnfromEmpLeavesAndEmpAttendences < ActiveRecord::Migration[5.0]
  def change
    remove_column :emp_attendances, :employee_detail_id, index: true
    remove_column :emp_leaves, :employee_detail_id, index: true
  end
end
