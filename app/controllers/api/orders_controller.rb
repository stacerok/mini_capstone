class Api::OrdersController < ApplicationController
  def create
    @order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      # subtotal: params[:subtotal],
      # tax: params[:tax],
      # total: params[:total],
    )

    # happy/sad path
    if @order.save
      render "show.json.jb" 
    else
      render json: { errors: @product.errors.full_messages }, status: 406
    end
  end
end
