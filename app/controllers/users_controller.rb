class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
  @user = User.find_by_id(params[:id])
  @avaiblebooks = @user.books.where(status: true)
  @favbooks = current_user.favorite_books
  @fav = Favorite.find_by_id(params[:id])
  end
end
