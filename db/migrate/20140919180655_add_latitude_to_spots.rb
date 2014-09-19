class AddLatitudeToSpots < ActiveRecord::Migration
  def change
    rename_column :spots, :location, :latitude
  end
end
