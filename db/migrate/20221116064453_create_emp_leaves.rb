class CreateEmpLeaves < ActiveRecord::Migration[5.0]
  def change
    create_table :emp_leaves do |t|
      t.references :employee_detail, foreign_key: true
      t.datetime :startdate
      t.datetime :enddate
      t.string :reason

      t.timestamps
    end
  end
end
