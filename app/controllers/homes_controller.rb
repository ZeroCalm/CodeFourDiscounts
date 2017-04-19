class HomesController < ApplicationController
  before_action :authenticate_user!
  

  def index
    if current_user
        redirect_to locations_path
    end
  end

  def map
    @locations = Location.all
  end

  def mapAdd
    @locations = Location.all
  end
end
