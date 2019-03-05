class BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end


  def create
    @book = Book.find_or_create_by(book_params)
    render json: @book
  end

  private

  def book_params
    params.permit(:title, :author, :publisher, :description, :isbn_10, :page_count, :average_review, :thumbnail, :info_link, :retail_price)
  end
end
