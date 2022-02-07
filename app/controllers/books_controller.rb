class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/show'
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  # ストロングパラメータ
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
