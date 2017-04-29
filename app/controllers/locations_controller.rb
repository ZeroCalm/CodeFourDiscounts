class LocationsController < ApplicationController
      before_action :authenticate_user!


    def index
      @locations = if params[:term]
      Location.where('location_name LIKE ?', "%#{params[:term]}%")
      else
        Location.all
      end
    end

    def map
      @locations = Location.all
    end

    def new
      @location = Location.new
    end

    def show
      location_id = params[:id]
      @location = Location.find_by_id(location_id)
    end

    def create
    location = Location.new(location_params)
        if location.save
          redirect_to map_path
        end
    end

    def edit
      location_id = params[:id]
      @location = Location.find_by_id(location_id)
    end

    def update
        location_id = params[:id]
        location = Location.find_by_id(location_id)
        location_params = params.require(:location).permit(:location_name, :location_address, :location_description, :lat, :lng)
        location.update_attributes(location_params)
        redirect_to location_path(location)
    end
    def destroy
    location_id = params[:id]
    location = Location.find_by_id(location_id)
    location.destroy
    redirect_to locations_path
  end

  private

  def location_params
    params.require(:location).permit(:location_name, :location_address, :location_description, :lat, :lng, :term)
  end
end
