class CreateShipings < ActiveRecord::Migration[5.2]
  def change
    create_table :shipings do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.text :phone
      t.string :address
      t.string :city
      t.string :status
      t.integer :zip
      t.decimal :user_id

      t.timestamps
    end
  end
end
