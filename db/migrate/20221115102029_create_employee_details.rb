class CreateEmployeeDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :employee_details do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.string "phone_number"
      t.string "address"
      t.integer "date_of_birth"
      t.integer "gender" , default: 0
      t.date "hire_date"
      
      t.timestamps
    end
  end
end
