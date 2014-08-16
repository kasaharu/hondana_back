class BookracksController < ApplicationController
  before_filter :authenticate_user!


  # GET /bookracks/top
  def top
    @user = User.find(current_user.id)
  end

  # GET /bookracks
  def index
    @bookracks = Bookrack.where(:user_id => current_user.id).all
  end

  # GET /bookracks/:id
  def show
    @bookrack = Bookrack.find(params[:id])
    @books = Book.where(:bookrack_id => params[:id]).all
  end

  # GET /bookracks/new
  def new
    @bookrack = Bookrack.new
  end

  # GET /bookracks/:id/edit
  def edit
    @bookrack = Bookrack.find(params[:id])
  end


  # POST /bookracks
  def create
    @bookrack = Bookrack.new(bookrack_params)
    @bookrack.user_id = current_user.id
    respond_to do |format|
      if @bookrack.save
        format.html { redirect_to @bookrack, notice: 'Created' }
#        format.csv
#        format.json
      else
        format.html { render :new }
      end
    end
  end


  # PATCH/PUT /bookracks/:id
  def update
    @bookrack = Bookrack.find(params[:id])
    respond_to do |format|
      if @bookrack.update(bookrack_params)
        format.html { redirect_to @bookrack, notice: 'Bookrack was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /bookracks/:id
  def destroy
    @bookrack = Bookrack.find(params[:id])
    @bookrack.destroy
    respond_to do |format|
      format.html { redirect_to bookracks_url, notice: 'Bookrack was successfully destroyed.' }
    end
  end





  private
  def bookrack_params
    params.require(:bookrack).permit(:name)
  end
end
