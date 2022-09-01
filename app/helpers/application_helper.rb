module ApplicationHelper
  def already_in_cart?(item_id)
    current_user.cart.purchases.all.each do |purchase|
      if item_id == purchase.item.id
        return true
      end
    end
    return false
  end
end
