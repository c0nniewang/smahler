Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :jam_sessions, only: [:index, :new, :show, :create, :edit]
  resources :users
  root 'application#homepage', as: 'homepage'
  get '/sessions', to: 'session#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy', as: 'signout'
  #added update routes
  patch '/jam_sessions/:id/:name', to: 'jam_sessions#update', as: 'update_jam_sessions'
  patch '/jam_sessions', to: 'jam_sessions#update'
end
