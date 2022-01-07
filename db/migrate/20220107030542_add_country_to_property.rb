class AddCountryToProperty < ActiveRecord::Migration[7.0]
  def change
    add_reference :properties, :country, foreign_key: true
  end
end
