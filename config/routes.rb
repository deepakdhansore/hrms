Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  
  devise_for :employees, controllers: { sessions: 'employees/sessions' }

  devise_scope :employees do
    get 'sign_in', to: 'devise/sessions#new'
  end
  devise_for :employees , skip: :all

  resources :employees do
    resources :attendances
  end
  resources :employees do
    resources :salaries
  end
  root 'employees#index'
end
