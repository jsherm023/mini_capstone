class Api::ProductsController < ApplicationController
  def index
    search_term = params[:user_input]
    @products = Product.where('name LIKE ?', "%#{search_term}%")
    @products = @products.order(:id => :asc)
    render 'index.json.jbuilder'
  end

  def create
    @product = Product.new(name: "magna bucket", price: 15, image_url: "www.magnabucket.com", description: "Best bucket you ever seen")

    if @product.save
      render "show.json.jbuilder"
    else
      render "error.json.jbuilder"  
    end
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.name
    @product.image_url
    @product.description
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
