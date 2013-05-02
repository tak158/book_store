class CategoriesController < ApplicationController
  def index
    @categories = Category.order(:display_order)
    if params[:category_id]
      @books = Book.where(category_id: params[:category_id]).order(:display_order)
    else
      @books = Book.order(:display_order).all
    end
  end
end
