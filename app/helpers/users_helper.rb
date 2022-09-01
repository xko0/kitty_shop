module UsersHelper

  def is_admin?
    unless current_user.is_admin == true
      flash[:danger] = "Accès refusé, vous n'êtes pas un administrateur du super site KittyShop, meow !"
      redirect_to root_path
    end
  end
end
