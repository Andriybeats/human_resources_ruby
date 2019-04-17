Rails.application.routes.draw do

  devise_for :employees
  #get 'employees', as: 'user_root'

  resources :pages, :positions, :history, :departments, :vacations, :employees

  root 'welcome#index'
end
