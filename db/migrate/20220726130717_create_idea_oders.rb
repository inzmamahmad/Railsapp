class CreateIdeaOders < ActiveRecord::Migration[5.2]
  def change
    create_table :idea_oders do |t|
      t.decimal :idea_id
      t.decimal :order_id

      t.timestamps
    end
  end
end
