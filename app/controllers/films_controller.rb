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
    redirect_to films_path
  end

  def show
    @film = Film.find(params[:id])
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
