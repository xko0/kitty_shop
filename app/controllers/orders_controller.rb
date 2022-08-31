class OrdersController < ApplicationController

  def create
    @order = Order.create(user: current_user)
    @order.fill(find_cart)
    @order.order_mail_send(current_user)
     flash[:alert] = "votre commande est passée !"
    redirect_to root_path
  end
end
