class AddLat < ActiveRecord::Migration
  def change
    add_column :spots, :lat, :float, :precision => 23, :scale => 20, :default => 0.0
  end
end