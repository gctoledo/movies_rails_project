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


  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])

    if @genre.update(genre_params)
      return redirect_to genre_path
    end

    render :edit
  end

  private

  def genre_params
    params.require(:genre).permit(:name, :description)
  end
end
