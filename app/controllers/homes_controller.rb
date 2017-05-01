class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user
      redirect_to splash_path
    end
  end
end
