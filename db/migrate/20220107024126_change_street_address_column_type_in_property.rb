class ChangeStreetAddressColumnTypeInProperty < ActiveRecord::Migration[7.0]
  def change
    change_column(:properties, :street_address, :string)
  end
end
