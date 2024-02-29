class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2
      t.string :currency
      t.text :description
      t.integer :quantity
      t.references :category, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
