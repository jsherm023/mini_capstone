class Api::ProductsController < ApplicationController
  def super_sponge
    @products = Product.all
    render 'product1.json.jbuilder'
  end
end
