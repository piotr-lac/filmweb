class OpinionsController < ApplicationController
  
  def index
    @film = Film.find(params[:film_id])
    @opinions = Opinion.all.select { |f| f.film_id == @film.id }
    
  end

  def new
    @film = Film.find(params[:film_id])
    @opinion = Opinion.new
  end

  def create
    @film = Film.find(params[:film_id])
    @opinion = Opinion.new(film_id: @film.id)
    opinion_params = params.require(:opinion).permit(:nick, :review, :rating)
    @opinion.attributes = opinion_params
    @opinion.save
    # redirect_to film_path(@opinion.film_id)
    redirect_to film_path(@film.id)
  end

  def opinion_params
    params.require(:opinion).permit(:nick, :review, :rating, :film_id)
  end



end
