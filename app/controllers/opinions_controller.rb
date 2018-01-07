class OpinionsController < ApplicationController
  
  def index
    @film = Film.find(params[:id])
    @opinions = Opinion.all.select { |f| f.film_id == @film.id }
  end


end
