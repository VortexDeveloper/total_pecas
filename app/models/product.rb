class Product < ApplicationRecord
  belongs_to :advertisement

  has_one :vehicle
  has_one :part
end
