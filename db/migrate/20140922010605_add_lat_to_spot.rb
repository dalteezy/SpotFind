class AddLatToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :lat, :decimal, :precision => 15, :scale => 10, :default => 0.0
  end
end