Rails.application.routes.draw do
  root                'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/home',    to: 'static_pages#home'
<<<<<<< HEAD
  # get '/schedule', to: 'schedules#show'
=======
  get '\edit_schedule', to: 'schedules#show'

>>>>>>> development

  devise_for :users, :controllers => {registrations: 'registrations'}
  
  get '/available_shifts', to: 'requests#availableShifts'
  post '/available_shifts', to: 'requests#create'
  
  resources :requests
  resources :schedules
  resources :positions
  resources :users
  resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end