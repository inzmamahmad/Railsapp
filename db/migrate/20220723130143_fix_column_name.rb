class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :ideas, :category_id, :categoryy_id
  end
end
