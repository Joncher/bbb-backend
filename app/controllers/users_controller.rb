class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end


  def create
    @user = User.find_or_create_by(user_params)
    render json: @user
  end
  def delete_book
    @user_book = UserBook.find_by(user_id: params[:user_id], book_id: params[:id])
    @user_book.delete
    render json: @user_book
  end








  private
  def user_params
    params.permit(:username)
  end




end
