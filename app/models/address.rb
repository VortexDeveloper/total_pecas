class Address < ApplicationRecord
  has_many :address_relations
  has_many :companies, through: :address_relations

  has_one :city
  has_one :state
end
