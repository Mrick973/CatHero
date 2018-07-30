Rails.application.routes.draw do
  get 'perfils/index'
  get 'perfils/create'
  get 'perfils/show'
  # get 'bookings/create'
  # get 'bookings/index'
  resources :bookings
  devise_for :users
  root to: 'pages#home'
   get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
