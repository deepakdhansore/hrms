class RemoveDesignationfromEmployee < ActiveRecord::Migration[5.0]
  def change
    remove_column :employees, :designation
  end
end
