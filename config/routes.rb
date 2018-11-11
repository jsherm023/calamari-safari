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

    get '/cities' => 'cities#index'
    post '/cities' => 'cities#create'
    get '/cities/:id' => 'cities#show'
    patch '/cities/:id' => 'cities#update'
    delete '/cities/:id' => 'cities#destroy'

    get '/restaurants' => 'restaurants#index'
    post '/restaurants' => 'restaurants#create'
    get '/restaurants/:id' => 'restaurants#show'
    patch '/restaurants/:id' => 'restaurants#update'
    delete '/restaurants/:id' => 'restaurants#destroy'
  end
end
