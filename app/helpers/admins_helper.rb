module AdminsHelper

  def admin?
    return false unless user_signed_in?
    return true if current_user.admin == true
  end

  def require_admin
    unless current_user.admin?
      redirect_to root_path
    end
  end

end
