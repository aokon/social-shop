class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @pagy, @products = pagy(@category.products)
  end
end
