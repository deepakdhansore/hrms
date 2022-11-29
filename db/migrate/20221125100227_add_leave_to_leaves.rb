# frozen_string_literal: true

class AddLeaveToLeaves < ActiveRecord::Migration[5.0]
  def change
    add_column :leaves, :days, :integer
    add_column :leaves, :total_leaves, :integer
  end
end
