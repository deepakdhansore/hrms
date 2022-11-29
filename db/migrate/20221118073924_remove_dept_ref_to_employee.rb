# frozen_string_literal: true

class RemoveDeptRefToEmployee < ActiveRecord::Migration[5.0]
  def change
    change_table :employees do |t|
      t.remove :department_id
    end
  end
end
