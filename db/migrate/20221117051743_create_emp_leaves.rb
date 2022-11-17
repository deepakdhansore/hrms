class CreateEmpLeaves < ActiveRecord::Migration[5.0]
  def change
    change_table :emp_leaves do |t|
     t.belongs_to :employee ,index: true
    end
  end
end
