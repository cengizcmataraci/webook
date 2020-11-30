class TradeablesController < ApplicationController
  before_action :check_trades, only: [:new, :create]
  before_action :check_same, only: [:new]
  before_action :set_trade, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def new
    @tradeables = Tradeable.new
    @book = Book.find(params[:book_id])
    @cbook = current_user.books.tradeablestat
  end

  def create
    @book = Book.find(params[:book_id])
    @tradeable = @book.tradeables.create(tradeables_params)

    if @book.save
      redirect_to book_path(@book), :notice => 'Your request has been sent to the user.'
    else
      render 'new'
    end
  end

  def edit
    @tradeable = Tradeable.find(params[:id])
    @book = Book.find(@tradeable.offered_book_id)
  end

  def update
    @tradeable = Tradeable.find(params[:id])

    if params[:answer] == 'Deny'
      @tradeable.deny!
    elsif params[:answer] == 'Approve'
      @tradeable.approve!
    end

    if @tradeable
      redirect_to dashboard_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @tradeable = Tradeable.find(params[:id])
    @tradeable.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Trade was successfully cancelled.' }
      format.json { head :no_content }
    end
  end

  private

  def set_trade
    @tradeable = Tradeable.find(params[:id])
  end

  def check_same
    if current_user == Book.find(params[:book_id]).user
      redirect_to dashboard_index_path, :notice => "You can't make a request to your own book."
    end
  end

  def check_trades
    @tradeable = Tradeable.where(book_id: params[:book_id]).first

    if @tradeable
      redirect_to book_path(params[:book_id]), :notice => 'You already have a request about this book.'
    end
  end

  def tradeables_params
    params.require(:tradeable).merge(user_id: current_user.id).permit(:offered_book_id, :user_id)
  end
end
