Rails.application.routes.draw do
  
  resources :employees do
    resources :attendances
    resources :salaries
    resources :leaves
  end


  root 'employees#index'

  devise_for :employees, controllers: { sessions: 'employees/sessions' }


  devise_scope :employees do
    get 'sign_in', to: 'devise/sessions#new'
  end
  devise_for :employees , skip: :all

 
end
