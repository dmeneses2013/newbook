Rails.application.routes.draw do

  root :to => 'search#index'
  get '/' => 'search#index'
  get '/search' => 'search#show'
  get '/books/:id' => 'books#new'

  get '/likes' => 'likes#index'
  get '/likes/new' => 'likes#new'
  post '/likes' => 'likes#create'
  delete '/likes' => 'likes#destroy'

  resources :users, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  get '/recommendations' => 'recommended#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
