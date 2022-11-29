# frozen_string_literal: true

class RenameColumnfromEmpAttendences < ActiveRecord::Migration[5.0]
  def change
    rename_column :emp_attendances, :In_time, :in_time
    rename_column :emp_attendances, :Out_time, :out_time
  end
end
