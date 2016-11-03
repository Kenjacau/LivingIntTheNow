Rails.application.routes.draw do
  root                'static_pages#welcome'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/home',    to: 'static_pages#home'

  resources :requests
  resources :schedules
  resources :positions
  resources :users
  resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end