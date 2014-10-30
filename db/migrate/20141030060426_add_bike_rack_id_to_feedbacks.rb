class AddBikeRackIdToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :bike_rack_id, :integer
  end
end
