class CreateEmpAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :emp_attendances do |t|
      t.date :status_date
      t.time :In_time
      t.time :Out_time
      t.references :employee_detail, foreign_key: true

      t.timestamps
    end
  end
end
