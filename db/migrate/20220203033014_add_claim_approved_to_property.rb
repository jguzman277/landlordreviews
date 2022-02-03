class AddClaimApprovedToProperty < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :claim_approved, :boolean
  end
end
