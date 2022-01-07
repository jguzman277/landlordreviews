class ChangeRoomColumnTypeinRoom < ActiveRecord::Migration[7.0]
  def change
    change_column(:rooms, :room, :string)
  end
end
