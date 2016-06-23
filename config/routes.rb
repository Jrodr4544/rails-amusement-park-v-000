Rails.application.routes.draw do

  resources :attractions
  # resources :sessions
  root  'welcome#index'
  get   '/signin'   =>  'sessions#new'      , as: :signin
  post  '/signin'   =>  'sessions#create'   , as: :create_session
  post  '/signout'  =>  'sessions#destroy'  , as: :signout
  resources :users
end