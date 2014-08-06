class AddProductPriceToLineItem < ActiveRecord::Migration
  def up
    #add price to line_items
    add_column :line_items, :price, :decimal, :precision => 8, :scale => 2

    #reset the cached columns
    LineItem.reset_column_information

    #iterate over line item, update product price
    LineItem.all.each do |item|
      item.update_attribute :price, item.product.price
    end
  end

  def down
    remove_column :line_items, :price
  end
end
