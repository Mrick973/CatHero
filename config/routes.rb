Rails.application.routes.draw do
  # get 'flats/new'
  # get 'flats/index'
  # get 'animals/new'
  # get 'animal/new'
  get 'perfils/index'
  get 'perfils/create'
  get 'perfils/show'
  # get 'bookings/create'
  # get 'bookings/index'
  # resources :bookings
  
  # resources :flats
  # root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
devise_for :users
root to: 'pages#home'
resources :animals
  resources :flats do
      resources :bookings, except: [ :index, :destroy ]
    end
    resources :bookings
end

# , only: [:index, :new,]