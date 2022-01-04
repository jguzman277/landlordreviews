class DropPropertyAmenities < ActiveRecord::Migration[7.0]
  def change
    drop_table :property_amenities
  end
end
