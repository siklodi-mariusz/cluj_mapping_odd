class AddImgUrlToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :img_url, :string
  end
end
