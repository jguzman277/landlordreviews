class AddHalfBathroomsToProperty < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :half_bathrooms, :integer
  end
end
