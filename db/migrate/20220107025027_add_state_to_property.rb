class AddStateToProperty < ActiveRecord::Migration[7.0]
  def change
    add_reference :properties, :state, foreign_key: true
  end
end
