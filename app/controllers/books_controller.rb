class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def create
   @book = Book.new(book_params)
      if @book.save
        redirect_to '/books', notice: 'Book was successfully created.' 
      else
        render :new
      end
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    respond_to do |format|
      format.html { redirect_to '/books', notice: 'Book was successfully updated.' }
      end
  end
  
  def destroy
    @book = Book.find(params[:id])  
    @book.destroy  
    respond_to do |format|
      format.html { redirect_to '/books', notice: 'Book was successfully destroyed.' }
      end
  end

  private
  def book_params
    params.permit(:title, :body)
    
  end

end