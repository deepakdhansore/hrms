class CreateEmpSalaries < ActiveRecord::Migration[5.0]
  def change
    create_table :emp_salaries do |t|
      t.datetime :fromdate
      t.datetime :todate
      t.float :salary
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
