class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = find_item
  end
end
