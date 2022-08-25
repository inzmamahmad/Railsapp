class ChangeIdeaIdToBeTypesInIdea < ActiveRecord::Migration[5.2]
  def change
    change_column :ideas, :user_id, :integer
    change_column :ideas, :categoryy_id, :integer
    change_column :ideas, :price, :decimal
    change_column :ideas, :quantity, :decimal
  end
end
