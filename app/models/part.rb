class Part < ApplicationRecord
  belongs_to :product
  belongs_to :categories

  has_many :vehicle_parts
  has_many :vehicles, through: :vehicle_parts
end
