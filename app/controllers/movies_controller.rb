class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie, notice: "Filme criado com sucesso."
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      return redirect_to movie_path
    end

    render :edit
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :description, :image_url, :release_date, director_ids: [], genre_ids: [])
  end
end
