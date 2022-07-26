class BooksController < ApplicationController
  before_action :ensure_correct_user, only: [:edit, :update]
  def index
    @book = Book.new
    @books = Book.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
  end

  def show
    @books = Book.new
    @book = Book.find(params[:id])
    @comment = Comment.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book.id)
  end

  def destroy
    
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

  def ensure_correct_user
    @book = Book.find(params[:id])
    @user = @book.user
    redirect_to books_path unless @user == current_user
  end

end
