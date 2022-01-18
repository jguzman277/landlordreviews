class AddFieldsToLandlord < ActiveRecord::Migration[7.0]
  def change
    add_column :landlords, :first_name, :string
    add_column :landlords, :last_name, :string
    add_column :landlords, :company_name, :string
    add_column :landlords, :phone_number, :string
    add_column :landlords, :type, :string
    add_column :landlords, :email_address, :string
    add_column :landlords, :website, :string
    add_column :landlords, :street_address, :string
    add_column :landlords, :city, :string
    add_reference :landlords, :state, foreign_key: true
    add_reference :landlords, :country, foreign_key: true
    add_column :landlords, :zip_code, :string
  end
end
