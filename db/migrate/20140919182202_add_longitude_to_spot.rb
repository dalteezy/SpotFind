class AddLongitudeToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :lon, :float
  end
end
