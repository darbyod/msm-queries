class DirectorsController < ApplicationController
  
  def show_directors
    render({ :template => "directors_templates/directors" })
  end

  def show_directors_youngest
  
    ordered = Director.where.not({ :dob => nil }).order({ :dob => :asc })
    youngest_director = ordered.all.last
    @youngest_director_name = youngest_director.name

    @youngest_director_dob = youngest_director.dob.strftime("%B %d, %Y")

    render({ :template => "directors_templates/directors_youngest" })
  end

  def show_directors_eldest

    ordered = Director.where.not({ :dob => nil }).order({ :dob => :asc })
    eldest_director = ordered.all.first
    @eldest_director_name = eldest_director.name

    @eldest_director_dob = eldest_director.dob.strftime("%B %d, %Y")

    render({ :template => "directors_templates/directors_eldest" })
  end


  def show_directors_detail

    @director_id = params.fetch("director_id")

    detail = Director.where({ :id => @director_id })
    director_detail = detail.at(0)
    @bio = director_detail.bio

    render({ :template => "directors_templates/directors_detail" })
  end


end
