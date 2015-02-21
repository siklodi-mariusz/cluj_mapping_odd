class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.references :room, index: true

      t.timestamps null: false
    end
    add_foreign_key :facilities, :rooms
  end
end
