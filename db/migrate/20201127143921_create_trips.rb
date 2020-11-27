class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :description
      t.decimal :price
      t.string :country
      t.string :region
      t.string :city

      t.timestamps
    end
  end
end
