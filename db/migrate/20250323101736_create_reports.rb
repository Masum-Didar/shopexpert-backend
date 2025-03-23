class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.integer :shop_id
      t.decimal :total_sales
      t.decimal :total_expenses
      t.decimal :net_profit
      t.date :report_date

      t.timestamps
    end
  end
end
