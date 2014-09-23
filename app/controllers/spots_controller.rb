class SpotsController < ApplicationController

  def index
    @spot = Spot.all
  end

  def new
    @spot = Spot.new
  end

  def create
    Spot.create(spot_params)
    redirect_to spots_path
  end

private
  def spot_params
    params.require(:spot).permit(:lat, :lon, :name, :description, :bust_factor, :rating)
  end

end