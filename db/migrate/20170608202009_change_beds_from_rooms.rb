class ChangeBedsFromRooms < ActiveRecord::Migration[5.0]
  def change
    change_column :rooms, :beds, :integer, null: false
  end
end
