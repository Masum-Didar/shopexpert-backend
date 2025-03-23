class CreateDamages < ActiveRecord::Migration[7.1]
  def change
    create_table :damages do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.string :reason
      t.decimal :loss_amount
      t.date :damage_date

      t.timestamps
    end
  end
end
