ActiveAdmin.register Leave do
  config.clear_action_items!
  actions :index
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :startdate, :enddate, :reason, :employee_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:startdate, :enddate, :reason, :employee_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
