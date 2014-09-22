class AddLon < ActiveRecord::Migration
  def change
    add_column :spots, :lon, :float, :precision => 23, :scale => 20, :default => 0.0
  end
end