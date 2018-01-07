class FilmsController < ApplicationController
  
  def index
    @films = Film.all
  end

  def new
    @film = Film.new
  end


  def show
  end

  def edit
  end

  def destroy
  end

  def update
  end


  def create
  end

end
