Rails.application.routes.draw do

  resources :pages, :positions, :history, :departments, :vacations, :employees

  root 'welcome#index'
end
