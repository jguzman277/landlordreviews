class AddFullBathroomsToProperty < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :full_bathrooms, :integer
  end
end
