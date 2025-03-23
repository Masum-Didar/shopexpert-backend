class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.integer :shop_id
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :role

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
