class Api::OrdersController < ApplicationController
  def create
    carted_products = CartedProduct.where(status: "Carted")
    @carted_products = carted_products.where(user_id: current_user.id)
    subtotal = 0
    tax = 0
    total = 0
    @carted_products.each do |carted_product|
      product = carted_product.product
      subtotal += product.price * carted_product.quantity
      tax += product.price * 0.09 * carted_product.quantity
      total += subtotal + tax
      carted_product.status = "purchased"      
    end

    product = Product.find_by(id: params[:product_id]) 
    p "product"
    p product
    price = product.price

    @order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      total: total,
      tax: tax
      )
    if @order.save
      @carted_products.each do |carted_product|
        carted_product.order_id = @order.id
        carted_product.save
    # p @order.errors.full_messages        
      end

    end
    render "show.json.jbuilder"
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
