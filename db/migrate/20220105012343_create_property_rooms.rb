class CreatePropertyRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :property_rooms do |t|
      t.references :property, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
