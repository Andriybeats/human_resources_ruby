Rails.application.routes.draw do

  resources :pages, :positons, :history, :departments, :vacations, :employees

  root 'welcome#index'
end
