class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
    	t.string :purchaser_name
      t.string :item_description
      t.string :merchant_address
      t.string :merchant_name
      t.float	 :item_price
      t.integer :purchase_count
      t.integer :order_id
      
      t.timestamps
    end
  end
end
