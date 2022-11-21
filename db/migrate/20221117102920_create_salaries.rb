class CreateSalaries < ActiveRecord::Migration[5.0]
  def change
    create_table :salary_structures do |t|
      t.integer :amount
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
