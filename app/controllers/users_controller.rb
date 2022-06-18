class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
  def index
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end

  def correct_user
    @user = User.find(params[:id])
    @books = @user.books
    redirect_to user_path(current_user) unless @user == current_user
  end

end
