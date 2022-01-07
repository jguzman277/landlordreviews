class ChangePropertyTypeColumnTypeInPropertyType < ActiveRecord::Migration[7.0]
  def change
    change_column(:property_types, :property_type, :string)
  end
end
