class PropertyRoom < ApplicationRecord
  belongs_to :property
  belongs_to :room
end
