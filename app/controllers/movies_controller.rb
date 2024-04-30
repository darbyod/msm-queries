class MoviesController < ApplicationController
  
  def show_movies
    @movies = Movie.all
    
    @directors = Director.all

    render({ :template => "/movies" })
  end

  def show_movies_detail

    @movie_id = params.fetch("movie_id")


    #detail = Director.where({ :id => @director_id })
    #director_detail = detail.at(0)
    #@bio = director_detail.bio

    render({ :template => "/movies_detail" })
  end

end
