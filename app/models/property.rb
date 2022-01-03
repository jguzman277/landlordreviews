class Property < ApplicationRecord
    validates :street_address, :city, :state, :country, :zip_code, :property_type_id, presence: true
    belongs_to :property_type
end
