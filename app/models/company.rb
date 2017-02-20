class Company < ApplicationRecord
  belongs_to :user

  has_many :phone_books
  has_many :phones, through: :phone_books
  
  has_many :address_relations
  has_many :addresses, through: :address_relations
end
