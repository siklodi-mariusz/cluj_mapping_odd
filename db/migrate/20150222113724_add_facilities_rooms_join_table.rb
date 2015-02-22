class AddFacilitiesRoomsJoinTable < ActiveRecord::Migration
  def change
    create_table :facilities_rooms do |t|
      t.integer :facility_id
      t.integer :room_id
    end
  add_index :facilities_rooms, [:facility_id, :room_id], unique: true
  end
end
