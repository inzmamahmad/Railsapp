class AddQuantityToIdea < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :quantity, :integer
  end
end
