class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(name: params[:genre][:name], description: params[:genre][:description])

    if @genre.save
      return redirect_to genres_path
    end

    render :new
  end
end
