class MoviesController < ApplicationController
  
  def show_movies
    render({ :template => "/movies" })
  end


end
