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
     @opinions = Opinion.all.select { |f| f.film_id == @film.id }
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])
    @film.update(film_params)
    redirect_to films_path
  end
  
  def destroy
    @film = Film.find(params[:id])
    @film.destroy
    redirect_to films_path
  end

  def film_params
    params.require(:film).permit(:title, :description)
  end
end
