module CartsHelper
  def find_cart
    Cart.find(params[:id])
  end
end
