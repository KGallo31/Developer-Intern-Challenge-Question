class CreateInventoryitems < ActiveRecord::Migration[7.0]
  def change
    create_table :inventoryitems do |t|
      t.references :item, null: false, foreign_key: true
      t.references :inventory, null: false, foreign_key: true
      t.integer :quantity
      t.float :total_item_price

      t.timestamps
    end
  end
end
