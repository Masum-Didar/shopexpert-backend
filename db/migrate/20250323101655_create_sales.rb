class CreateSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales do |t|
      t.integer :shop_id
      t.integer :product_id
      t.integer :user_id
      t.integer :quantity_sold
      t.decimal :total_revenue
      t.date :sale_date

      t.timestamps
    end
  end
end
