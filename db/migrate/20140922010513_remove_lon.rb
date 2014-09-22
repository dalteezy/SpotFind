class RemoveLon < ActiveRecord::Migration
  def change
    remove_column :spots, :lon
  end
end
