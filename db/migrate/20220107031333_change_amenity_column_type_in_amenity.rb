class ChangeAmenityColumnTypeInAmenity < ActiveRecord::Migration[7.0]
  def change
    change_column(:amenities, :amenity, :string)
  end
end
