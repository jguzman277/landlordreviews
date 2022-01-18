class RemoveEmailAddressFromLandlord < ActiveRecord::Migration[7.0]
  def change
    remove_column :landlords, :email_address, :string
  end
end
