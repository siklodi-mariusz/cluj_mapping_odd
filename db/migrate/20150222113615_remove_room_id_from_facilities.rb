class RemoveRoomIdFromFacilities < ActiveRecord::Migration
  def change
    remove_column :facilities, :room_id
  end
end
