class VehiclePart < ApplicationRecord
  belongs_to :vehicle
  belongs_to :part
end
