class ChangeImageUrlFromRooms < ActiveRecord::Migration[5.0]
  def change
    change_column :rooms, :image_url, :string, null: false
  end
end
