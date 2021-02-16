class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.text :title
      t.text :description
      t.decimal :price
      t.text :country
      t.text :region
      t.text :city

      t.timestamps
    end
  end
end
