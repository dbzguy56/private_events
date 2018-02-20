Rails.application.routes.draw do

  root 'users#new'
  get '/signin', to: 'users#new'
  post '/signin', to: 'users#create'
  get '/user' , to: 'users#show'
end
