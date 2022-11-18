class RenameTables < ActiveRecord::Migration[5.0]
  def change
    rename_table :emp_attendances, :attendances
    rename_table :emp_leaves, :leaves
    rename_table :emp_salaries, :salaries
  end
end
