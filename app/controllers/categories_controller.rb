class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @cateogory = Category.find(params[:id])
  end
end
