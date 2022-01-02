class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.text :street_address
      t.text :unit_number
      t.text :city
      t.text :state
      t.text :country
      t.text :zip_code

      t.timestamps
    end
  end
end
