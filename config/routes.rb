Rails.application.routes.draw do
  resources :itineraries
  resources :cities
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/poi', to: 'cities#poi'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
