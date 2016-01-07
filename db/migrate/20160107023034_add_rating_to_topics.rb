class AddRatingToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :rating, :integer
  end
end
