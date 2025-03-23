class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.integer :shop_id
      t.string :name
      t.string :category
      t.decimal :purchase_price
      t.decimal :selling_price
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
