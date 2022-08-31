class User < ApplicationRecord
  has_one :cart
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  #has_many :orders #purchases ?

  after_save :create_cart

  def create_cart
    Cart.create(user: self)
  end

  #def welcome_send
    #UserMailer.welcome_email(self).deliver_now
  #end 
  
end
