class AddCreatedByToProperty < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :created_by, :string
    add_column :properties, :updated_by, :string
  end
end
