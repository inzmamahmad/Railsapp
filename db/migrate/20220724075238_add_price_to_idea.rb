class AddPriceToIdea < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :price, :integer
  end
end
