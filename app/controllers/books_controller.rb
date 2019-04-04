class BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end

  def create
    # byebug
    @book = Book.find_or_create_by(book_params)
    @user = User.find(params[:user_id])
    @user.books << @book
    render json: @book
  end

  private

  def book_params
    params.permit(:title, :author, :publisher, :description, :isbn_10, :page_count, :average_review, :thumbnail, :info_link, :retail_price)
  end
end
