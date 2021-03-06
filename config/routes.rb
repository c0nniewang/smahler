Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :jam_sessions, only: [:index, :new, :show, :create, :edit]
  resources :users, only: [:index, :new, :show, :create, :edit]
  root 'application#homepage', as: 'homepage'
  get '/sessions', to: 'session#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy', as: 'signout'
  #added update routes
  patch '/users/:name/:id', to: 'users#delete_inst'
  patch '/users/:name', to: 'users#update_inst'

  patch '/jam_sessions/:id/add_comment', to: 'jam_sessions#add_comment'
  patch '/jam_sessions/:id/:name', to: 'jam_sessions#updatejam'
  patch '/jam_sessions/:id', to: 'jam_sessions#delete_jams'

  resources :comments, only: [:create]
end





# forget for a moment the page and how it looks lets talk organization
#                           GET
# POST /users/1/instruments
## users have Instruments -> /users/1/instruments



#
## users have Jams  -> /users/1/jams

## jams have users -> /jams/1/musicians

## jams have many
