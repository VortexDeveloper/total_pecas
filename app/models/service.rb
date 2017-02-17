class Service < ApplicationRecord
  belongs_to :advertisement

  has_many :service_kinds
  has_many :kinds, through: :service_kinds
end
