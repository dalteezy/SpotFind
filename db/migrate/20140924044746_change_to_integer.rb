class ChangeToInteger < ActiveRecord::Migration
  def change
    remove_column :spots, :rating
    add_column :spots, :rating, :integer
  end
end
