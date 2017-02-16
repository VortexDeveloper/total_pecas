class Company < ApplicationRecord
  belongs_to :user

  has_many :phone_books
  has_many :phones, through: :phone_books
end
