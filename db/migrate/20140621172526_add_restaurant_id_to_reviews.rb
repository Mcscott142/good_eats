class AddRestaurantIdToReviews < ActiveRecord::Migration
  def up
    add_column :reviews, :restaurant_id, :integer, null: false
  end

  def down
    remove_column :reviews, :restaurant_id, :integer
  end
end
