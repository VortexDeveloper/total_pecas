class Service < ApplicationRecord
  belongs_to :advertisement

  has_many :service_kinds
  has_many :kinds, through: :service_kinds

  def title
    advertisement.title
  end

  def description
    advertisement.description
  end

  def price
    advertisement.price
  end

  def photo
    advertisement.photo
  end
end
