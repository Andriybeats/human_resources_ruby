Rails.application.routes.draw do


  default_url_options :host => "http://localhost:3000"

  devise_for :employees, :controllers => { :omniauth_callbacks => "employees/omniauth_callbacks" }



  #devise_for :employees
  #get 'employees/show', as: 'employee_root'

  resources :pages, :positions, :history, :departments, :vacations, :employees

  root 'welcome#index'
end
