Rails.application.routes.draw do

  root 'users#new'
  get '/event/new', to: 'events#new'
  post '/event/new', to: 'events#create'
  get '/event/:id', to: 'events#show', as: 'event'
  get '/events', to: 'events#index'
  get '/signin', to: 'users#new'
  post '/signin', to: 'users#create'
  get '/users/:id' , to: 'users#show'
end
