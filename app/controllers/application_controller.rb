class ApplicationController < ActionController::Base
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

end
