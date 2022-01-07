class CreateBedrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :bedrooms do |t|
      t.string :bedroom

      t.timestamps
    end
  end
end
