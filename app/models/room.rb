class Room < ApplicationRecord
    has_many :property_rooms
    has_many :properties, through: :property_rooms
end
