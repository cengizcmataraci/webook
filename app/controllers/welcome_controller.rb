class WelcomeController < ApplicationController

  def index
  	@books = Book.all
  	@avaiblebooks = @books.where(status: true)
  end

  def hey
  end
end
