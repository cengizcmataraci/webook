class CommentsController < ApplicationController
  before_action :permission, only: [:edit, :update]

    def create
    @book = Book.find(params[:book_id])
    @comment = @book.comment.create(comment_params)

    respond_to do |format|
      format.js
    end
    end

    def edit
    @book = Book.find(params[:book_id])
    @comment = Comment.find(params[:id])
    end

    def update
      @comment = Comment.find(params[:id])

      if @comment.update_attributes(:status => true)
        redirect_to dashboard_index_url
      else
        render 'edit'
      end
    end

  private
    def comment_params
      params.require(:comment).merge(user_id: current_user.id).permit(:title, :content, :user_id)
    end

    def permission
      if current_user != Book.find(params[:book_id]).user
        redirect_to root_path
      end
    end
end
