Rails.application.routes.draw do

  root :to => 'search#index'
  get '/' => 'search#index'
  get '/search' => 'search#show'
  get '/books/:id' => 'books#show'

  resources :users, :only => [:new, :create]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
