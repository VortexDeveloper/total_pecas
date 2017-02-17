class Accessory < ApplicationRecord
  has_many :vehicle_accessories
  has_many :vehicles, through: :vehicle_accessories
end
