class ChangeGuestsFromRooms < ActiveRecord::Migration[5.0]
  def change
    change_column :rooms, :guests, :integer, null: false
  end
end
