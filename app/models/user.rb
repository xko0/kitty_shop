class User < ApplicationRecord
  has_one :cart, dependent: :destroy
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  has_many :orders, dependent: :destroy

  after_save :create_cart
  
  def create_cart
    Cart.create(user: self)
  end

  def admin?
    current_user.admin == true
  end
end
