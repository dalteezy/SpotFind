class AddLatitudeToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :lat, :float
  end
end
