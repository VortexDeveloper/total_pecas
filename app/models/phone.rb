class Phone < ApplicationRecord
  belongs_to :user
  belongs_to :company

  has_many :phone_books
  has_many :users, through: :phone_books
  has_many :companies, through: :phone_books

  enum type: [:landline, :cell_phone]
end
