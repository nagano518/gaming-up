class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movies_params)
    @movie.save
  end

  private

    def movies_params
      params.require(:movie).permit(:movie_name, :movie_content, :video_top).merge(user_id: current_user.id)
    end
end
