class CartsController < ApplicationController
  def show; end

  def create; end

  def destroy
    @cart = find_cart
    @cart.destroy
  end

  def update; end
end
