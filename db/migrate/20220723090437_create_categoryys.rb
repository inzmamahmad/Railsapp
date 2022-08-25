class CreateCategoryys < ActiveRecord::Migration[5.2]
  def change
    create_table :categoryys do |t|
      t.string :name
      t.decimal :user_id

      t.timestamps
    end
  end
end
