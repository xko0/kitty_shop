class CartsController < ApplicationController
  before_action :authenticate_user!, only: [:show] do
    redirect_to root_path unless is_user_cart?
  end

  def show
    @current_cart = find_cart
    @items = @current_cart.items
    @price = @current_cart.calculate_price
  end

end
