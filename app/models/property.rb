class Property < ApplicationRecord
    validates :street_address, :city, :state, :country, :zip_code, presence: true
end
