class AddUserToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :user, :string
  end
end
