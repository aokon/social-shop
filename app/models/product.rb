class Product < ApplicationRecord
  enum :color, [:red, :blue, :black]
  belongs_to :category

  broadcasts_refreshes_to :category

  # after_commit :broadcast_changes

  private

  # def broadcast_changes
  # broadcast_replace_to "inbox", partial: "products/product",
  # locals: {product: self, category: category}, target: "product_#{id}"
  # end
end
