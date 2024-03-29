# frozen_string_literal: true

# CreateImages
class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :name, null: false
      t.string :path, null: false

      t.timestamps
    end
  end
end
