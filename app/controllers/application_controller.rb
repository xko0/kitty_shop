class ApplicationController < ActionController::Base
  include CartsHelper
  include ItemsHelper
  add_flash_types :info, :error, :success, :alert

  def authorize_admin
    if user_signed_in?
      redirect_to root_path, status: 401 unless current_user.admin
    else
      redirect_to root_path
    end
    # redirects to previous page
  end
end
