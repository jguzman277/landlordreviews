class PropertyType < ApplicationRecord
    validates :property_type, presence: true
    
    has_many :properties
end
