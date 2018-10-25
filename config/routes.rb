Rails.application.routes.draw do
  namespace :api do
    get '/products' => 'products#index'
    get '/products' => 'products#show'
    post '/products' => 'products#create'
    patch '/products:id' => 'products#update'
    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'
  end
end

# product3 = Product.new(name: "megacloth", price: 50, image_url: "www.image.com", description: "the best")
# product3.save
