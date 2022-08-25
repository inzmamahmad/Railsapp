class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :total
      t.decimal :subtotal
      t.decimal :discount
      t.decimal :total_items
      t.string :status
      t.decimal :user_id

      t.timestamps
    end
  end
end
