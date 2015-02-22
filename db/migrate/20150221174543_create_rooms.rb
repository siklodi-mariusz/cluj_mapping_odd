class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :hotel
      t.string :link
      t.float :lat
      t.float :lon
      t.integer :min
      t.integer :max
      t.string :phone
      t.string :address

      t.timestamps null: false
    end
  end
end
