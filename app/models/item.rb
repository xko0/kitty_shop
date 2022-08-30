class Item < ApplicationRecord
  validates :title, length: { minimum: 5 }
  validates :description, length: { minimum: 50 }
  validates :title, :description, :price, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 5 }
  has_many :purchases
  has_many :carts, through: :purchases
  has_many :item_ordereds
  has_many :orders, through: :item_ordereds
end
