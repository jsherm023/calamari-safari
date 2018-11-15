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
    post '/cities' => 'cities#create'
    get '/cities/:id' => 'cities#show'
    patch '/cities/:id' => 'cities#update'
    delete '/cities/:id' => 'cities#destroy'

    get '/restaurants' => 'restaurants#index'
    post '/restaurants' => 'restaurants#create'
    get '/restaurants/:id' => 'restaurants#show'
    patch '/restaurants/:id' => 'restaurants#update'
    delete '/restaurants/:id' => 'restaurants#destroy'

    get '/menus' => 'menus#index'
    post '/menus' => 'menus#create'
    get '/menus/:id' => 'menus#show'
    patch '/menus/:id' => 'menus#update'
    delete '/menus/:id' => 'menus#destroy'

    get '/ratings' => 'ratings#index'
    post '/ratings' => 'ratings#create'
    get '/ratings/:id' => 'ratings#show'
    patch '/ratings/:id' => 'ratings#update'
    delete '/ratings/:id' => 'ratings#destroy'

    get '/restaurant_menus' => 'restaurant_menus#index'
    get '/restaurant_menus/:id' => 'restaurant_menus#show'
  end
end
