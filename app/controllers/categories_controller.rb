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

  def test_mode
    sleep 2
    @result = params[:option]

    respond_to do |format|
      format.turbo_stream
    end
  end

  def promo
    category = Category.find(params[:id])
    category.promo = category.default? ? Category::SALES.sample : :default
    category.save

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.update(helpers.dom_id(category),
          partial: "categories/category", locals: {category:})
      end
    end
  end
end
