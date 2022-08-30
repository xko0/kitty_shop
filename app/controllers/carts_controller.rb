class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    @current_cart = find_cart
    @items = @current_cart.items
  end

  def create; end

  def destroy; end

  def update; end
end
