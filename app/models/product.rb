class Product < ApplicationRecord
  belongs_to :advertisement

  has_one :vehicle
  has_one :part

  enum status: [:fresh, :worn, :scrap]
  enum type: [:car, :motorcycle, :scooter, :truck, :atv, :utv, :motorboat, :jet_ski]
end
