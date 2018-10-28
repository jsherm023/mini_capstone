Rails.application.routes.draw do
  namespace :api do
    get '/products' => 'products#index'
    get '/products' => 'products#show'
    post '/products' => 'products#create'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'

    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'

    post '/orders' => 'orders#create'
    get '/orders' => 'orders#index'
  end
end

# product3 = Product.new(name: "megacloth", price: 50, image_url: "www.image.com", description: "the best")
# product3.save
