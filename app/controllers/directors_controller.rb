class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(name: params[:director][:name], description: params[:director][:description])

    if @director.save
      return redirect_to directors_path
    end

    render :new
  end
end
