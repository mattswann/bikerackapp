class AddSitesToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :site, :string
  end
end
