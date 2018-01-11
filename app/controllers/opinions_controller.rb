class OpinionsController < ApplicationController
  
  def index
    binding.pry
    @film = Film.find(params[:id])
    @opinions = Opinion.all.select { |f| f.film_id == @film.id }
    binding.pry
  end

  def new
    @opinion = Opinion.new
  end


end
