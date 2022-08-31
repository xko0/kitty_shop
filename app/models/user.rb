class User < ApplicationRecord
  has_one :cart
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_save :create_cart

  def create_cart
    Cart.create(user: self)
  end

  def admin?
    current_user.admin == true
  end

end
