Rails.application.routes.draw do
  namespace :api do
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'
    delete '/users/:id' => 'users#destroy'

    get '/states' => 'states#index'
    get '/states/:id' => 'states#show'

    get '/cities' => 'cities#index'
    get '/cities/:id' => 'cities#show'

    get '/restaurants' => 'restaurants#index'
    get '/restaurants/:id' => 'restaurants#show'

    get '/menus' => 'menus#index'
    get '/menus/:id' => 'menus#show'

    get '/ratings' => 'ratings#index'
    post '/ratings' => 'ratings#create'
    get '/ratings/:id' => 'ratings#show'
    patch '/ratings/:id' => 'ratings#update'
    delete '/ratings/:id' => 'ratings#destroy'
  end
end
