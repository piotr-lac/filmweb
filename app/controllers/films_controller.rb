class FilmsController < ApplicationController
  
  def index
    @films = Film.all
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)
    @film.save
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def film_params
    params.require(:film).permit(:title,:description)
  end
end
