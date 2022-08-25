class CreateIdeaItems < ActiveRecord::Migration[5.2]
  def change
    create_table :idea_items do |t|
      t.decimal :idea_id
      t.decimal :order_id
      t.decimal :total
      t.decimal :unit_price
      t.decimal :total
      t.integer :quantity

      t.timestamps
    end
  end
end
