class PurchasesController < ApplicationController
  def create
    current_cart = find_cart
    Purchase.create!(cart_id: current_cart.id, item_id: params_item)
    redirect_to cart_path(current_cart)
  end

  def destroy
    current_cart = find_cart
    Purchase.destroy(params[:id])
    redirect_to cart_path(current_cart)
  end

  private

  def params_item
    params.require(:item_id)
  end
end
