# frozen_string_literal: true

class DropSometable < ActiveRecord::Migration[5.0]
  def change
    drop_table :pay_rolls
    drop_table :salary_structures
  end
end
