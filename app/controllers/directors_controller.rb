class DirectorsController < ApplicationController
  def directors

    @list_of_directors = Director.all
    render("/directors/index.html.erb")

  end

  def new_director

    render("/directors/new_director.html.erb")

  end

  def create_row_director
    # params = {"the_caption"=>"A caption", "the_source"=>"some-url"}

    i = Director.new
    i.director_name = params["director_name"]
    i.director_bio = params["director_bio"]
    i.director_dob = params["director_dob"]
    i.director_image_url = params["director_img_url"]
    i.save

    redirect_to("http://localhost:3000/directors")
  end

  def show
    # params = {"id"=>"4"}

    @director = Director.find(params["id"])
    render("directors/show.html.erb")

  end

  def destroy
    @director = Director.find(params["id"])

    @director.destroy

    redirect_to("http://localhost:3000/directors")
  end

  def edit_director
  @director = Director.find(params["id"])
  render ("/directors/edit_director.html.erb")
  end

  def update_row_director
      i = Director.find(params["id"])
      i.director_name = params["director_name"]
      i.director_bio = params["director_bio"]
      i.director_dob = params["director_dob"]
      i.director_image_url = params["director_img_url"]
      i.save

    redirect_to("http://localhost:3000/directors")
  end

end

