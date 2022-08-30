class Order < ApplicationRecord
  belongs_to :user
  has_many :item_ordereds
  has_many :items, through: :item_ordereds
end
