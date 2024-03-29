Rails.application.routes.draw do
  resources :jobs
  resources :boats
  get '/login', to: 'sessions#new'
  # check to see if we have a user, then set session[:user_id]
  post '/login', to: 'sessions#create'
  # logout
  delete '/logout', to: 'sessions#destroy'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 