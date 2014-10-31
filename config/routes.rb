Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  post '/pokemon', to: 'pokemon#create'
  patch '/capture', to: 'pokemon#capture', as: 'capture'
  patch '/damage', to: 'pokemon#damage', as: 'damage'
  get '/pokemon/new', to: 'pokemon#new', as: 'new_pokemon'
end
