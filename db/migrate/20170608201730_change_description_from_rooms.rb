class ChangeDescriptionFromRooms < ActiveRecord::Migration[5.0]
  def change
    change_column :rooms, :description, :string, limit: 400, null: false
  end
end
