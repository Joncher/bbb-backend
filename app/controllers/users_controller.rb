class UsersController < ApplicationController
  def get_my_books
    @user = User.find(params[:id])
    render json: @user.books
  end

  def delete_book
    @user_book = UserBook.find_by(user_id: params[:user_id], book_id: params[:id])
    @user_book.delete
    render json: @user_book
  end
end
