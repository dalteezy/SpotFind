class RemoveLat < ActiveRecord::Migration
  def change
    remove_column :spots, :lat
  end
end

