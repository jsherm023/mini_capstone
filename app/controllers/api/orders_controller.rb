class Api::OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    p "product"
    p product
    price = product.price

    calculated_subtotal = params[:quantity].to_i * price
    calculated_tax = calculated_subtotal *0.09
    calculated_total = calculated_subtotal + calculated_tax  

    @order = Order.new(
      product_id: params[:product_id],
      user_id: current_user.id,
      quantity: params[:quantity],
      product_id: params[:product_id],
      subtotal: calculated_subtotal,
      total: calculated_total,
      tax: calculated_tax
      )
    # @order.save
    p @order.errors.full_messages
    render 'show.json.jbuilder'
  end

  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
    if current_user
      @orders = current_user.orders
      render "index.json.jbuilder"
    else
      render json: [], status: :unauthorized
    end
  end
end