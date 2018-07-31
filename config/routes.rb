Rails.application.routes.draw do
  get 'flats/new'
  get 'flats/index'
  get 'animals/new'
  get 'animal/new'
  get 'perfils/index'
  get 'perfils/create'
  get 'perfils/show'
  # get 'bookings/create'
  # get 'bookings/index'
  resources :bookings
  devise_for :users
  root to: 'pages#home'
  resources :animals
  resources :flats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
