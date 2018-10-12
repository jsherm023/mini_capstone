Rails.application.routes.draw do
  namespace :api do
   get '/product1' => 'products#super_sponge'
 end
end
