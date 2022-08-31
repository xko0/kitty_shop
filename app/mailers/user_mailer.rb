class UserMailer < ApplicationMailer
  def user_order(order)
    @order = order
    mail(to: @order.user.email, subject: 'votre commande est passée')
  end
end
