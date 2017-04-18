class LocationsController < ApplicationController

  def index
      @locations = Location.all
  end

  def new
    @location = Location.new
    # remember the default behavior is to render :new
  end

  def show
    # get the creature id from the url params
    location_id = params[:id]

    # use `creature_id` to find the creature in the database
    # and save it to an instance variable
    @location = Location.find_by_id(location_id)

    # render the show view (it has access to instance variable)
    # remember the default behavior is to render :show
  end



  def create
  # whitelist params and save them to a variable
  location_params = params.require(:location).permit(:location_name, :location_address, :location_description, :lat, :lng)

  # create a new creature from `creature_params`
  location = Location.new(location_params)

  # if location saves, redirect to route that displays
  # ONLY the newly created location
  if location.save
    redirect_to location_path(location)
    # redirect_to location_path(creature) is equivalent to:
    # redirect_to "/locations/#{location.id}"
  end
end

def edit
  # get the creature id from the url params
  location_id = params[:id]

  # use `creature_id` to find the creature in the database
  # and save it to an instance variable
  @location = Location.find_by_id(location_id)

  # render the edit view (it has access to instance variable)
  # remember the default behavior is to render :edit
end

def update
    # get the creature id from the url params
    location_id = params[:id]

    # use `creature_id` to find the creature in the database
    location = Location.find_by_id(location_id)

    # whitelist params and save them to a variable
    location_params = params.require(:location).permit(:location_name, :location_address, :location_description, :lat, :lng)

    # update the creature
    location.update_attributes(location_params)

    # redirect to show page for the updated creature
    redirect_to location_path(location)
    # redirect_to creature_path(creature) is equivalent to:
    # redirect_to "/creatures/#{creature.id}"
  end

  def destroy
  # get the creature id from the url params
  location_id = params[:id]

  # use `creature_id` to find the creature in the database
  # and save it to an instance variable
  location = Location.find_by_id(location_id)

  # destroy the creature
  location.destroy

  # redirect to creatures index
  redirect_to locations_path
  # redirect_to creatures_path is equivalent to:
  # redirect_to "/creatures"
end

end
