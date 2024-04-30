class ActorsController < ApplicationController
  
  def show_actors
    render({ :template => "/actors" })
  end


end
