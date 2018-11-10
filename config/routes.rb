Rails.application.routes.draw do
  namespace :api do
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'
    delete '/users/:id' => 'users#destroy'

    get '/states' => 'states#index'
    post '/states' => 'states#create'
    get '/states/:id' => 'states#show'
    patch '/states/:id' => 'states#update'
    delete '/states/:id' => 'states#destroy'
  end
end

