class MoviesController < ApplicationController
  def movies

    @list_of_movies = Movie.all
    render("/movies/index.html.erb")

  end

  def new_movie

    render("/movies/new_movie.html.erb")

  end

  def create_row_movie
    # params = {"the_caption"=>"A caption", "the_source"=>"some-url"}

    m = Movie.new
    m.movie_title = params["movie_title"]
    m.movie_year = params["movie_year"]
    m.movie_duration = params["movie_duration"]
    m.movie_desc = params["movie_desc"]
    m.movie_image_url = params["movie_img_url"]
    m.save

    redirect_to("http://localhost:3000/movies")
  end

  def show
    # params = {"id"=>"4"}

    @movie = Movie.find(params["id"])
    render("movies/show.html.erb")

  end

  def destroy
    @movie = Movie.find(params["id"])

    @movie.destroy

    redirect_to("http://localhost:3000/movies")
  end

  def edit_movie
  @actor = Movie.find(params["id"])
    render ("/movies/edit_movie.html.erb")
  end

  def update_row_movie
    m = Movie.find(params["id"])
    m.movie_title = params["movie_title"]
    m.movie_year = params["movie_year"]
    m.movie_duration = params["movie_duration"]
    m.movie_desc = params["movie_desc"]
    m.movie_image_url = params["movie_img_url"]
    m.save

    redirect_to("http://localhost:3000/movies")
  end

end
