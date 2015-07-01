class ProductsByCategoryController < ApplicationController
  respond_to :html, :xml, :json

  before_filter :set_category, only: [:edit, :show]
  def index
    @categories = Category.all
  end

  def show
    @products = @category.products
  end

  private

  def set_category
    @category = Category.find params[:id]
  end
end
