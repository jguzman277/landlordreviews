class RemoveStateFromProperty < ActiveRecord::Migration[7.0]
  def change
    remove_column :properties, :state, :string
  end
end
