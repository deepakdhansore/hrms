# frozen_string_literal: true

ActiveAdmin.register Employee do
  permit_params :first_name, :last_name, :father_name, :mother_name, :address, :email, :country,
                :password, :gender, :hire_date, :date_of_birth, :martial_status,
                :designation, :department_id, :phone_number, :city

  index do
    id_column
    column :first_names
    column :last_name
    column :email
    column :hire_date
    actions
  end

  filter :department

  form do |f|
    f.inputs 'Details' do
      f.input :first_name
      f.input :last_name
      f.input :father_name
      f.input :mother_name
      f.input :department
      f.input :designation
      f.input :phone_number
      f.input :address
      f.input :email
      f.input :gender, as: :radio
      f.input :martial_status, as: :radio
      f.input :date_of_birth, as: :datepicker
      f.input :hire_date, as: :datepicker
      f.input :city
      f.input :country, as: :string
      f.input :allowed_leaves
      f.input :password
    end
    f.actions
  end
end
