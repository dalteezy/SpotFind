class SpotsController < ApplicationController

  def new
    @spot = Spot.new
  end

  def create
    Spot.create(lat:params[:lat], lon:params[:lng])
    Spot.create(spot_params)
    redirect_to welcomes_path
  end

private
  def spot_params
    params.require(:spot).permit(:lat, :lon, :name, :description, :bust_factor, :rating)
  end

end