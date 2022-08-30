class OrdersController < ApplicationController
  def create
    @order = Order.create(user: current_user)
    @order.fill(find_cart)
    redirect_to root_path
  end
end
