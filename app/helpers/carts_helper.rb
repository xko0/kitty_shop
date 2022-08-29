module CartsHelper
  def find_cart
    @cart = Cart.where(user_id: current_user.id)
  end
end
