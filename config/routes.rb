Rails.application.routes.draw do

  root :to => 'search#index'
  get '/' => 'search#index'
  get '/search' => 'search#show'
  get '/books/:id' => 'books#new'

  resources :users, :only => [:new, :create]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/likes' => 'likes#index'
  get '/likes/new' => 'likes#new'
  post '/likes' => 'likes#create'
  delete '/likes' => 'likes#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
