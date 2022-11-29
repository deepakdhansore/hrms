# frozen_string_literal: true

class CreateEmpAttendances < ActiveRecord::Migration[5.0]
  def change
    change_table :emp_attendances do |t|
      t.belongs_to :employee, index: true
    end
  end
end
