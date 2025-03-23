class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.integer :shop_id
      t.integer :expense_type
      t.decimal :amount
      t.date :expense_date

      t.timestamps
    end
  end
end
