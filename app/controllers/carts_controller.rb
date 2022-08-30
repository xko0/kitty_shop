class CartsController < ApplicationController
  def show
    @current_cart = find_cart
    @items = @current_cart.items
    @price = @current_cart.calculate_price
  end

  def create; end

  def destroy; end

  def update; end
end
