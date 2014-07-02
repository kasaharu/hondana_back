class BooksController < ApplicationController
  before_filter :authenticate_user!


  # GET /bookracks/:id/books
  def index
    @books = Book.all
  end

  # GET /bookracks/:id/books/:id
  def show
    @book = Book.find(params[:id])
  end

  # GET /bookracks/:id/books/new
  def new
    @book = Book.new
  end

  # GET /bookracks/:id/books/:id/edit
  def edit
    @book = Book.find(params[:id])
  end


  # POST /bookracks/:id/books
  def create
    @book = Book.new(book_params)
    @book.bookrack_id = params[:id]
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Created' }
#        format.csv
#        format.json
      else
        format.html { render :new }
      end
    end
  end


  # PATCH/PUT /bookracks/:id/books/:id
  def update
    @book = Book.find(params[:id])
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /bookracks/:id/books/:id
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
    end
  end





  private
  def book_params
    params.require(:book).permit(:name, :author, :category, :memo)
  end
end

