class ChangeIdeaIdToBeIntegerInIdeaitem < ActiveRecord::Migration[5.2]
  def change
    change_column :idea_items, :idea_id, :integer
  end
end
