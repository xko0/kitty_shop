class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def create
    current_cart = find_cart
    @item_id = params_item
    @item = Item.find(@item_id)
    Purchase.create!(cart_id: current_cart.id, item_id: @item_id)
    respond_to do |format|
      format.html {redirect_to cart_path(current_cart)}
      format.js {}
    end
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
