class User < ApplicationRecord
  has_one :cart
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  has_many :orders 

  after_save :create_cart

  def create_cart
    Cart.create(user: self)
  end

  def admin?
    current_user.admin == true
  end

  def destroy_user
    @user.cart.purchases.destroy_all
    @user.cart.destroy
    @user.orders.each do |order|
      order.item_ordereds.destroy_all
    end
    @user.orders.destroy_all
    @user.destroy
  end
end
