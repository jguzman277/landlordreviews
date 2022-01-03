class AddPropertyTypeToProperty < ActiveRecord::Migration[7.0]
  def change
    add_reference :properties, :property_type,  foreign_key: true
  end
end
