class UsersController < ApplicationController
  def delete_book
    @user_book = UserBook.find_by(user_id: params[:user_id], book_id: params[:id])
    @user_book.delete
    render json: @user_book
  end
end
