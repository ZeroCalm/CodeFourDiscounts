class LocationsController < ApplicationController

    def index
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
    location_params = params.require(:location).permit(:location_name, :location_address, :location_description, :lat, :lng)
    location = Location.new(location_params)
    if location.save
      redirect_to location_path(location)
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
end
