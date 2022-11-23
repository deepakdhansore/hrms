Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
 

  
    resources :employees do
      resources :attendances
    end
    
  

  


  devise_for :employees, controllers: { sessions: 'employees/sessions' }

  root 'employees#index'

  devise_scope :employees do
    get 'sign_in', to: 'devise/sessions#new'
  end
  devise_for :employees , skip: :all

 
end
