class AddIdeaIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :idea_id, :integer
  end
end
