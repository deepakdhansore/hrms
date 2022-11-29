# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :employees, controllers: { sessions: 'employees/sessions' }

  devise_scope :employees do
    get 'sign_in', to: 'devise/sessions#new'
  end
  devise_for :employees, skip: :all

  resources :employees do
    resources :attendances
  end
  resources :employees do
    resources :salaries
  end
  resources :employees do
    resources :leaves
  end
  root 'employees#index'
end
