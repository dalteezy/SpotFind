class SpotsController < ApplicationController

  def save
    @new_spot = Spot.new(spot_params) 
  end

  def create
    Spot.create(lat:params[:lat], lon:params[:lng])
    render json: "okay"
  end

private
  def spot_params
    params.require(:spot).permit(:lat, :lon)
  end

end