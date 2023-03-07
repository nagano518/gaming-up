class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movies_params)
    if @movie.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    if movie.destroy
      redirect_to root_path
    end
  end

  def show
    @movie = Movie.find(params[:id])
    @comment = Comment.new
    @comments = @movie.comments
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movies_params)
      redirect_to movie_path
    else
      render :edit
    end
  end

  private

    def movies_params
      params.require(:movie).permit(:movie_name, :movie_content, :video_top, :genre_id).merge(user_id: current_user.id)
    end
end
