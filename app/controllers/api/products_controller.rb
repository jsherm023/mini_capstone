class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def create
    @product = Product.new(name: "magna bucket", price: 15, image_url: "www.magnabucket.com", description: "Best bucket you ever seen")
    @product.save
    render "show.json.jbuilder"
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.name
    @product.image_url
    @product.description

    def show
      ???????

  end
end
