class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name
      t.string :description
      t.integer :bust_factor
      t.string :rating
      t.string :location

      t.timestamps
    end
  end
end
