class ModifyColumnOfAtendances < ActiveRecord::Migration[5.0]
  def change
   
    rename_column :attendances, :working_hour,:total_hour

  
  
  end
end
