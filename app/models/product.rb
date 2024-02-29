class Product < ApplicationRecord
  enum :color, [:red, :blue, :black]
  belongs_to :category
end
