class ActorsController < ApplicationController
  
  def show_actors
  
    @actors = Actor.all
    
    render({ :template => "/actors" })
  end

  def show_actors_detail

    @actor_id = params.fetch("actor_id")

    #detail = Director.where({ :id => @director_id })
    #director_detail = detail.at(0)
    #@bio = director_detail.bio

    render({ :template => "/actors_detail" })
  end
end
