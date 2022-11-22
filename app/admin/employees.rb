ActiveAdmin.register Employee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params  :designation,:department_id,:first_name, :last_name, :phone_number, :address, :email, :password, :gender, :age, :hire_date, :date_of_birth, :reset_password_token, :reset_password_sent_at, :remember_created_at, :city, :country, :martial_status, :father_name, :mother_name
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :phone_number, :address, :email, :encrypted_password, :gender, :age, :hire_date, :date_of_birth, :reset_password_token, :reset_password_sent_at, :remember_created_at, :city, :country, :martial_status, :father_name, :mother_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    selectable_column
    id_column
    column :first_name
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
      f.input :age
      f.input :gender ,:as => :radio
      f.input :martial_status , :as => :radio
      f.input :date_of_birth,  :as => :datepicker
      f.input :hire_date, :as => :datepicker
      f.input :city 
      f.input :country, :as => :string
      f.input :password
      
    end
    f.actions 
  end
end
