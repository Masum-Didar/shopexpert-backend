class CreatePurchases < ActiveRecord::Migration[7.1]
  def change
    create_table :purchases do |t|
      t.integer :shop_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :total_cost
      t.date :purchase_date

      t.timestamps
    end
  end
end
