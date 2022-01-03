class CreatePropertyTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :property_types do |t|
      t.text :property_type

      t.timestamps
    end
  end
end
