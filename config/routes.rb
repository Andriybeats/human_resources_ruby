Rails.application.routes.draw do


  default_url_options :host => "http://localhost:3000"

  devise_for :employees, :controllers => { :omniauth_callbacks => "employees/omniauth_callbacks" }

  resources :employees do
    collection { post :import }
  end

  #devise_for :employees

  get 'employees/export', as: 'employees_export'

  resources :pages, :positions, :history, :departments, :vacations, :employees

  root 'welcome#index'
end
