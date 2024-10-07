class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)

    if @director.save
      return redirect_to directors_path
    end

    render :new
  end

  def show
    @director = Director.find(params[:id])
  end

  private

  def director_params
    params.require(:director).permit(:name, :description)
  end
end
