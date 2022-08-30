class AddReferencesToItemOrdereds < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_ordereds, :order, foreign_key: true
    add_reference :item_ordereds, :item, foreign_key: true
  end
end
