class VehicleAccessory < ApplicationRecord
  belongs_to :vehicle
  belongs_to :accessory
end
