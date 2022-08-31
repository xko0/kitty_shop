class UserMailer < ApplicationMailer
 
  def order_email(user)
    @user = user
    @item = ItemOrdered.where(item_id: 6)
    @url = 'http://monsite.fr/login'
    mail(to: @user.email, subject: 'votre commande est passée')
  end
end
