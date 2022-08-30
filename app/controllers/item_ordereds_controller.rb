class ItemOrderedsController < ApplicationController
  def create
    ItemOrdered.create!(user_id: current_user, item_id)
  end
end
