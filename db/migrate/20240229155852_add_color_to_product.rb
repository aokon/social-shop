class AddColorToProduct < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :color, :integer, default: nil
  end
end
