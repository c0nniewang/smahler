Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :jam_sessions
  resources :users
  root 'application#homepage', as: 'homepage'
  get '/sessions', to: 'session#new'
  post '/sessions', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'

end
