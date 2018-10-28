class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  def index
    search_term = params[:user_input]
    @products = Product.where('name LIKE ?', "%#{search_term}%")
    @products = @products.order(:id => :asc)
    render 'index.json.jbuilder'
  end

  def create
    @product = Product.new(
      name: params[:name], 
      price: params[:price], 
      description: params[:description],
      supplier_id: 1
      )

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
    @product.image
    @product.description
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def destroy
    @product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Your product has been deleted"}
  end
end
