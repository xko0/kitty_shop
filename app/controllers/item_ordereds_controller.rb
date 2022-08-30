class ItemOrderedsController < ApplicationController
  def create
    @current_cart = find_cart
    @items = @current_cart.items
    @order = Order.create(user_id: current_user)
    @items.each do |item|
      ItemOrdered.create!(order_id: @order_id, item_id: item.id)
    end
  redirect_to root_path
  end
end
