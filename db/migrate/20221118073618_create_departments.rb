# frozen_string_literal: true

class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string 'name'
      t.string 'role'
      t.timestamps
    end
  end
end
