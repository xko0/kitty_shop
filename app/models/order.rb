class Order < ApplicationRecord
  belongs_to :user
  has_many :item_ordereds
  has_many :items, through: :item_ordereds
  
  def fill(cart)
    cart.items.each do |item|
      ItemOrdered.create!(order: self, item_id: item.id)
    end
    cart.purchases.destroy_all
  end

  def order_mail_send(email_user)
    UserMailer.order_email(email_user).deliver_now
  end

  def admin_send(user)
    @user = User.where(admin: true).first.email
    UserMailer.admin_email(@user).deliver_now
  end
end
