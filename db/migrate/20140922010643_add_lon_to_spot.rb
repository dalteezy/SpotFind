class AddLonToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :lon, :decimal, :precision => 15, :scale => 10, :default => 0.0
  end
end