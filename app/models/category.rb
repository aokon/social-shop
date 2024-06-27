class Category < ApplicationRecord
  has_many :products

  SALES = %i[summer_sales winter_sales]

  enum :promo, default: 0, summer_sales: 1, winter_sales: 2
end
