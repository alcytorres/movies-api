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

  def show
    @movie = Movie.find_by(id: params[:id])
    render :show
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.update(
      title: params[:title] || @movie.title,
      director: params[:director] || @movie.director,
      release_year: params[:release_year] || @movie.release_year,
      imdb_score: params[:imdb_score] || @movie.imdb_score,
    )
    render :show
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: { message: "Movie destroyed successfully" }
  end


end
