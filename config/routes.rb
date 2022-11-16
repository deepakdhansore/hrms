Rails.application.routes.draw do
  devise_for :employees

  root 'employees#index'
end
