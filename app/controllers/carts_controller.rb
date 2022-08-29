class CartsController < ApplicationController
  def index
    @cart = find_cart
  end

  def create
    @cart = find_cart
    @item = Item.find(params[:item_id])
    check_item = Purchase.find_by(item: @item, cart: @cart)
    if !check_item.nil?
      flash[:error] = "This item is already added in cart."
      return redirect_to items_path
    end
    @purchase = Purchase.new(cart: @cart, item: @item)
    if @purchase.save
      redirect_to items_path
    end
  end

  def destroy
    @purchase = Purchase.find(params[:purchase_id])
    if @purchase.destroy
      flash[:success] = "Remove successfully an item"
    else
      flash[:error] = "An error has been occured!"
    end
    redirect_to carts_path
  end

  def update; end

end
