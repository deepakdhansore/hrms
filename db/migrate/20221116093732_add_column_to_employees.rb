# frozen_string_literal: true

class AddColumnToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :designation, :string
    add_column :employees, :city, :string
    add_column :employees, :country, :string
    add_column :employees, :martial_status, :integer, default: 0
    add_column :employees, :father_name, :string
    add_column :employees, :mother_name, :string
    add_reference :employees, :department, index: true
  end
end
