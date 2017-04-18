class HomesController < ApplicationController

  def index
    if current_user
        redirect_to locations_path
    end
  end
end
