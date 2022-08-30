class CreateItemOrdereds < ActiveRecord::Migration[5.2]
  def change
    create_table :item_ordereds do |t|

      t.timestamps
    end
  end
end
