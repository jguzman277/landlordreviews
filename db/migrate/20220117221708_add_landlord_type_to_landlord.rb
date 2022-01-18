class AddLandlordTypeToLandlord < ActiveRecord::Migration[7.0]
  def change
    add_column :landlords, :landlord_type, :string
  end
end
