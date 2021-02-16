class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.boolean :admin, null: false, default: false
      t.text :email, null: false
      t.text :encrypted_password, limit: 128, null: false
      t.text :confirmation_token, limit: 128
      t.text :remember_token, limit: 128, null: false
    end

    add_index :users, :email
    add_index :users, :remember_token
  end
end
