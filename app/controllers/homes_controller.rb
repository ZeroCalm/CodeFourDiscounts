class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user
      redirect_to map_path
    end
  end
end
