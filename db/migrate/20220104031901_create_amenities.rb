class CreateAmenities < ActiveRecord::Migration[7.0]
  def change
    create_table :amenities do |t|
      t.text :amenity

      t.timestamps
    end
  end
end
