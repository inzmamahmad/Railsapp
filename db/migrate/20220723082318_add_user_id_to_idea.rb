class AddUserIdToIdea < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :user_id, :decimal
  end
end
