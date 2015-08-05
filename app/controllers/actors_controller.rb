class ActorsController < ApplicationController
  def actors

    @list_of_actors = Actor.all
    render("/actors/index.html.erb")

  end

  def new_actor

    render("/actors/new_actor.html.erb")

  end

  def create_row_actor
    # params = {"the_caption"=>"A caption", "the_source"=>"some-url"}

    p = Actor.new
    p.actor_name = params["actor_name"]
    p.actor_bio = params["actor_bio"]
    p.actor_dob = params["actor_dob"]
    p.actor_image_url = params["actor_img_url"]
    p.save

    redirect_to("http://localhost:3000/actors")
  end

  def show
    # params = {"id"=>"4"}

    @actor = Actor.find(params["id"])
    render("actors/show.html.erb")

  end

  def destroy
    @actor = Actor.find(params["id"])

    @actor.destroy

    redirect_to("http://localhost:3000/actors")
  end

  def edit_actor
  @actor = Actor.find(params["id"])
    render ("/actors/edit_actor.html.erb")
  end

  def update_row_actor
    p = Actor.find(params["id"])
    p.actor_name = params["actor_name"]
    p.actor_bio = params["actor_bio"]
    p.actor_dob = params["actor_dob"]
    p.actor_image_url = params["actor_img_url"]
    p.save

    redirect_to("http://localhost:3000/actors")
  end

end
