class Property < ApplicationRecord
    validates :street_address, :city, :state, :country, :zip_code, :property_type_id, presence: true

    belongs_to :property_type

    has_many :property_amenities
    has_many :amenities, through: :property_amenities
end
