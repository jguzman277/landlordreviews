class ChangeColumnTypeInProperty < ActiveRecord::Migration[7.0]
  def change
    change_column(:properties, :unit_number, :string)
    change_column(:properties, :city, :string)
    change_column(:properties, :state, :string)
    change_column(:properties, :country, :string)
    change_column(:properties, :zip_code, :string)
  end
end
