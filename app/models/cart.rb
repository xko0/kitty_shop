class Cart < ApplicationRecord
  belongs_to :user
  has_many :purchases
  has_many :carts, through: :purchases
end
