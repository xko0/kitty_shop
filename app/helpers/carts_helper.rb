module CartsHelper
  def find_cart
    @cart = Cart.find(current_user.cart.id)
  end
end
