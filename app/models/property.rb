class Property < ApplicationRecord
    validates :street_address, :city, :state, :country, :zip_code, :property_type_id, presence: true

    belongs_to :property_type
    belongs_to :bedroom
    belongs_to :state
    belongs_to :country
    belongs_to :landlord, optional: true

    has_many :property_amenities
    has_many :amenities, through: :property_amenities

    has_many :property_rooms
    has_many :rooms, through: :property_rooms
end
