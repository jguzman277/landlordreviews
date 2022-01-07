class AddBedroomIdToProperty < ActiveRecord::Migration[7.0]
  def change
    add_reference :properties, :bedroom, foreign_key: true
  end
end
