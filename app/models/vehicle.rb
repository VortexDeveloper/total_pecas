class Vehicle < ApplicationRecord
  belongs_to :product

  has_many :vehicle_parts
  has_many :vehicle_accessories
  has_many :parts, through: :vehicle_parts
  has_many :accessories, through: :vehicle_accessories
end
