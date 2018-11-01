class Api::CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "Carted"
      )
    @carted_product.save
    render json: {message: "Your items have been added to your cart!"}
  end

  def index
    if current_user
    carted_products = CartedProduct.where(status: "Carted")
     @carted_products = CartedProduct.where(user_id: current_user)
    else
      @carted_products = []
    end
    render "index.json.jbuilder"
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.status = "removed"
    @carted_product.save
    render json: {message: "Your item has been removed from your cart!"}
  end
end
