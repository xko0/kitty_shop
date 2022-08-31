module CartsHelper
  def find_cart
    @cart = Cart.where(user_id: current_user.id).first
  end

  def is_user_cart?
    @cart = Cart.find(params[:id])
    @cart.user == current_user
  end
end
