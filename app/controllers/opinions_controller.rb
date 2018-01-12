class OpinionsController < ApplicationController
  
  def index
    # binding.pry
    @film = Film.find(params[:id])
    @opinions = Opinion.all.select { |f| f.film_id == @film.id }
    
  end

  def new
    @film = Film.find(5)
    @opinion = Opinion.new
  end

  def create
    @opinion = Opinion.new(opinion_params)
    @opinion.save
    redirect_to film_path
  end

  def opinion_params
    params.require(:opinion).permit(:nick, :review, :rating, :film_id)
  end



end
