# frozen_string_literal: true

ActiveAdmin.register Salary do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :fromdate, :todate, :salary, :employee_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:fromdate, :todate, :salary, :employee_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    selectable_column

    column :employee
    column :fromdate
    column :todate
    column :salary

    actions
  end

  filter :employee
  filter :fromdate

  form do |f|
    f.inputs 'Salary' do
      f.input :employee
      f.input :fromdate, as: :datepicker
      f.input :todate, as: :datepicker
      f.input :salary
    end
    f.actions
  end
end
