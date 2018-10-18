Rails.application.routes.draw do
  namespace :api do
   get '/products' => 'products#index'
   get '/products' => 'products#show'
   post '/products' => 'products#create'
   patch '/products:id' => 'products#update'
  end
end
