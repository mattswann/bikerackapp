class CreateBikeRacks < ActiveRecord::Migration
  def change
    create_table :bike_racks do |t|
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
