class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to movie_path(@comment.movie)
    else
      @movie = @comment.movie
      @comments = @movie.comments
      render "movies/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_content).merge(user_id: current_user.id, movie_id: params[:movie_id])
  end
end
