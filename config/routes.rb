Rails.application.routes.draw do

  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "show_directors" })
  get("/directors/youngest", { :controller => "directors", :action => "show_directors_youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "show_directors_eldest" })
  get("/directors/:director_id", { :controller => "directors", :action => "show_directors_detail" })


  get("/movies", { :controller => "movies", :action => "show_movies" })
  get("/movies/:movie_id", { :controller => "movies", :action => "show_movies_detail" })

  get("/actors", { :controller => "actors", :action => "show_actors" })
  get("/actors/:actor_id", { :controller => "actors", :action => "show_actors_detail" })

end
