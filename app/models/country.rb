class Country < ApplicationRecord
    has_many :properties
    has_many :landlords
end
