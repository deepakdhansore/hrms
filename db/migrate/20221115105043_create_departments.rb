class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :type
      t.integer :no_of_emp
      t.string :role

      t.timestamps
    end
  end
end
