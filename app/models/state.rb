class State < ApplicationRecord
    has_many :properties
    has_many :landlords
end
