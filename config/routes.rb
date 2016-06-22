Rails.application.routes.draw do

  resources :attractions
  resources :sessions
  root 'welcome#index'

  resources :users
end