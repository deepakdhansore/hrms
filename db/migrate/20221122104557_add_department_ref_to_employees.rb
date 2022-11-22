class AddDepartmentRefToEmployees < ActiveRecord::Migration[5.0]
  def change
   
    add_reference :employees, :department, index: true, foreign_key: true
  end
end
