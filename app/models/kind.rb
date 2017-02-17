class Kind < ApplicationRecord
  has_many :service_kinds
  has_many :services, through: :service_kinds
end
