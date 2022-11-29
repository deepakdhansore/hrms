# frozen_string_literal: true

class AddCurrentSalaryAndAllowedLeavesToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :current_salary, :float
    add_column :employees, :allowed_leaves, :integer
  end
end
