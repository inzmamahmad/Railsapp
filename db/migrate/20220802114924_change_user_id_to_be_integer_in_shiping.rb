class ChangeUserIdToBeIntegerInShiping < ActiveRecord::Migration[5.2]
  def change
    change_column :shipings, :user_id, :integer

  end
end
