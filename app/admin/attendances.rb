ActiveAdmin.register Attendance do
  config.clear_action_items!
  actions :index
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :status_date, :in_time, :out_time, :total_hour, :employee_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:status_date, :in_time, :out_time, :total_hour, :employee_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
