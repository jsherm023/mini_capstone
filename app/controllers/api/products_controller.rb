class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def create
    @product = Product.new(name: "magna bucket", image_url: "www.magnabucket.com", description: "Best bucket you ever seen")
    @product.save
    render "show.json.jbuilder"
  end
end
