# frozen_string_literal: true

class RemoveEmployeeRefFromDepartment < ActiveRecord::Migration[5.0]
  def change
    remove_reference :departments, :employee, index: true
    remove_column :departments, :role, :string
  end
end
