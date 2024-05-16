class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render :index
  end

  def create
    @movie = Movie.create(
      title: params[:title],
      director: params[:director],
      release_year: params[:release_year],
      imdb_score: params[:imdb_score]
    )
    render :show
  end

end
