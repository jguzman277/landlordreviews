class RemovePropertyAmenityIdFromProperty < ActiveRecord::Migration[7.0]
  def change
    remove_column :properties, :property_amenity_id, :integer
  end
end
