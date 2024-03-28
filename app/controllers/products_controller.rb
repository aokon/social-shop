class ProductsController < ApplicationController
  before_action :find_category

  def index
    @products = @category.products
  end

  def show
    @product = @category.products.find(params[:id])
  end

  def destroy
    @product = @category.products.find(params[:id])
    @product.destroy!

    respond_to do |format|
      format.html { rediredt_to category_path(@category) }
      format.turbo_stream { flash.now[:notice] = "Product #{@product.title} was deleted!" }
    end
  end

  private

  def find_category
    @category = Category.find(params[:category_id])
  end
end
