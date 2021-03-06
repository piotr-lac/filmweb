class FilmsController < ApplicationController
  before_action :find_film, only: [:show, :edit, :update, :destroy]
  
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
    @opinions = Opinion.all.select { |f| f.film_id == @film.id }
  end

  def edit
    
  end

  def update
    @film.update(film_params)
    redirect_to film_path
  end
  
  def destroy
    @film.destroy
    redirect_to films_path
  end

  def film_params
    params.require(:film).permit(:title, :description)
  end

  def find_film
    @film = Film.find(params[:id])
  end

end
