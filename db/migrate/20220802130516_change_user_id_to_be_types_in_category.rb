class ChangeUserIdToBeTypesInCategory < ActiveRecord::Migration[5.2]
  def change
    change_column :categoryys, :user_id, :integer
  end
end
