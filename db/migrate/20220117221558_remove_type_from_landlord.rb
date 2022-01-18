class RemoveTypeFromLandlord < ActiveRecord::Migration[7.0]
  def change
    remove_column :landlords, :type, :string
  end
end
