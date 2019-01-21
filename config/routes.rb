Rails.application.routes.draw do
  get 'users/new'
  get '/' => 'search#index'
  get '/search' => 'search#show'
  get '/books/:id' => 'books#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
