class OrdersController < ApplicationController
  def create
    @cart = find_cart
    Order.create(user_id: current_user.id)
    redirect_to root_path
  end
end
