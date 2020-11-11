class DashboardController < ApplicationController
	before_action :authenticate_user!
  def index
  	@books = current_user.books.includes(:comment)
  	@comments = current_user.comment
  	@tradeable = current_user.tradeables
  end
end
