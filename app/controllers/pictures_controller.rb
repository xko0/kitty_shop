class PicturesController < ApplicationController
  def create
    @item = find_item
    @item.picture.attach(params[:picture])
    redirect_to(item_path(@item.id))
  end
end