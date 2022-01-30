class AddLandlordToProperty < ActiveRecord::Migration[7.0]
  def change
    add_reference :properties, :landlord, foreign_key: true
  end
end
