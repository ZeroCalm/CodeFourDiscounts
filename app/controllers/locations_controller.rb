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
      # whitelist params and save them to a variable
      location_params = params.require(:location).permit(:location_name, :location_address, :location_description, :lat, :lng)

      # create a new location from `location_params`
      location = Location.new(location_params)

      # if location saves, redirect to route that displays
      # ONLY the newly created location
      if location.save
        redirect_to location_path(location)
        # redirect_to location_path(location) is equivalent to:
        # redirect_to "/locations/#{location.id}"
      end
    end

    def edit
      # get the location id from the url params
      location_id = params[:id]
      @location = Location.find_by_id(location_id)
    end

    def update
        # get the location id from the url params
        location_id = params[:id]

        # use `location_id` to find the location in the database
        location = Location.find_by_id(location_id)

        # whitelist params and save them to a variable
        location_params = params.require(:location).permit(:location_name, :location_address, :location_description, :lat, :lng)

        # update the location
        location.update_attributes(location_params)

        # redirect to show page for the updated location
        redirect_to location_path(location)
        # redirect_to location_path(location) is equivalent to:
        # redirect_to "/locations/#{location.id}"
      end

      def destroy
      # get the location id from the url params
      location_id = params[:id]

      # use `location_id` to find the location in the database
      # and save it to an instance variable
      location = Location.find_by_id(location_id)

      # destroy the location
      location.destroy

      # redirect to locations index
      redirect_to locations_path
      # redirect_to locations_path is equivalent to:
      # redirect_to "/locations"
    end
end
