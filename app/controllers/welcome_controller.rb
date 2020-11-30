class WelcomeController < ApplicationController

  def index
  	@books = Book.all
    @avaiblebooks = @books.where(status: true)
  	@favsize = @avaiblebooks.sort_by{ |book| -book.favorites.size }.take(5)
  end

end
