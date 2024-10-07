class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)

    if @genre.save
      return redirect_to genres_path
    end

    render :new
  end

  private

  def genre_params
    params.require(:genre).permit(:name, :description)
  end
end
