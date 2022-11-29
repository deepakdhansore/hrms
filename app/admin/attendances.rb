# frozen_string_literal: true

ActiveAdmin.register Attendance do
  config.clear_action_items!
  actions :index
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :date, :time_in, :time_out, :working_hour, :employee_id
  #
  # or
  index do
    selectable_column
    id_column
    column :employee
    column :date
    column :time_in
    column :time_out
    column :total_hour

    actions
  end
  filter :employee
  filter :date
  # permit_params do
  #   permitted = [:status_date, :in_time, :out_time, :total_hour, :employee_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
