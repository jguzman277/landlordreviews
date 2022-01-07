class RemoveCountryFromProperty < ActiveRecord::Migration[7.0]
  def change
    remove_column :properties, :country, :string
  end
end
