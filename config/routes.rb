Rails.application.routes.draw do
    get 'products' => 'products#index'
    get '/products/new' => 'products#new'
    get '/products/:id' => 'products#show'
    post '/products' => 'products#create'
    namespace :api do
      get '/products' => 'products#index'
      get '/products/:id' => 'products#show'
      post '/products' => 'products#create'
      patch '/products/:id' => 'products#update'
      delete '/products/:id' => 'products#destroy'

      post '/users' => 'users#create'
      post '/sessions' => 'sessions#create'

      post '/orders' => 'orders#create'
      get '/orders' => 'orders#index'

      post '/CartedProducts' => 'carted_products#create'
      get '/CartedProducts/:id' => 'carted_products#show'
      get '/CartedProducts/' => 'carted_products#index'
      delete '/CartedProducts/:id' => 'carted_products#destroy'
    end
end

# product3 = Product.new(name: "megacloth", price: 50, image_url: "www.image.com", description: "the best")
# product3.save
