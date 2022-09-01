class Order < ApplicationRecord
  belongs_to :user
  has_many :item_ordereds, dependent: :destroy
  has_many :items, through: :item_ordereds


  def fill(cart)
    cart.items.each do |item|
      ItemOrdered.create!(order: self, item_id: item.id)
    end
    cart.purchases.destroy_all
  end
end
