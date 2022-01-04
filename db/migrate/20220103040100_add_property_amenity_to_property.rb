class AddPropertyAmenityToProperty < ActiveRecord::Migration[7.0]
  def change
    add_reference :properties, :property_amenity, foreign_key: true
  end
end
