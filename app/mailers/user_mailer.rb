class UserMailer < ApplicationMailer
 
  def user_order(order)
    @order = order
    mail(to: @order.user.email, subject: 'votre commande est passée')
  end

  def admin_email(order)
    @users = User.where(admin: true)
    @order = order
    emails = @users.collect(&:email).join(",")
    mail(to: emails, subject: 'Une commande a été passée sur votre site')
  end

end
