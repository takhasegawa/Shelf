class BooksController < ApplicationController

  def index
    @books = Book.checked_in.paginate(:page => params[:page], :per_page =>20)
  end
  
  def checked_out
    @books = Book.checked_out.paginate(:page => params[:page], :per_page => 20)
    render :index
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.create(params[:book])
    redirect_to @book
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update_attributes(params[:book])
    redirect_to @book
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to :back
  end
  
  def check_out
    @book = Book.find(params[:id])
    @book.update_attribute(:checked_out, true)
    redirect_to :back
  end
  
  def check_in
    @book = Book.find(params[:id])
    @book.update_attribute(:checked_out,false)
    redirect_to :back
  end
  
  def search
    @books = Book.search(params[:query])
    @books = @books.paginate(:page => params[:page], :per_page => 20)
    render :index
  end
end
