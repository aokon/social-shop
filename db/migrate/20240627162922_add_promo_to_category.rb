class AddPromoToCategory < ActiveRecord::Migration[7.1]
  def change
    add_column :categories, :promo, :integer, default: 0
  end
end
