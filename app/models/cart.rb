class Cart < ApplicationRecord
  belongs_to :user
  has_many :purchases, dependent: :destroy
  has_many :items, through: :purchases

  def calculate_price
    @items = self.items
    @price = 0
    @items.each do |item|
      @price += item.price
    end
    return @price
  end
end
