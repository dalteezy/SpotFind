class AddLatitudeType < ActiveRecord::Migration
  def change
    remove_column :spots, :latitude
  end
end
