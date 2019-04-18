Rails.application.routes.draw do

  devise_for :employees
  #get 'employees/show', as: 'employee_root'

  resources :pages, :positions, :history, :departments, :vacations, :employees

  root 'welcome#index'
end
