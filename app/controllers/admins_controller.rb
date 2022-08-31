class AdminsController < ApplicationController
  before_action :authorize_admin, only: :index
  def index
    @users = User.all
    @items = Item.all
    @orders = Order.all
  end
end
