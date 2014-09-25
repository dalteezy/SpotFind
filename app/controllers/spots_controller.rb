class SpotsController < ApplicationController

  before_action :require_login

  def index
    @spot = Spot.all
  end

  def new
    @spot = Spot.new
  end

  def show
    @spot = Spot.find(params[:id])
    # @items = @user.items.all
    @comment = Comment.new
    @spot = Spot.all
  end

  def create
    Spot.create(spot_params)
    redirect_to spots_path
  end

private
  def spot_params
    params.require(:spot).permit(:lat, :lon, :name, :description, :bust_factor, :rating, :photo, :user)
  end

  def require_login
    unless current_user
      redirect_to new_user_path
    end
  end



end



