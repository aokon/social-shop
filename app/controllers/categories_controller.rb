class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    scope = @category.products
    scope = scope.where(color: params[:color]) if params[:color]

    @pagy, @products = pagy(scope)
  end
end
