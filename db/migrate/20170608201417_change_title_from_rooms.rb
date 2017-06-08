class ChangeTitleFromRooms < ActiveRecord::Migration[5.0]
  def change
    change_column :rooms, :title, :string, null: false
  end
end
