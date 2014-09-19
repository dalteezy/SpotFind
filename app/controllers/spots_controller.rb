class SpotsController < ApplicationController

  def save
    @new_spot = Spot.new(spot_params) 
  end

private
  def spot_params
    params.require(:spot).permit(:location)
  end

end