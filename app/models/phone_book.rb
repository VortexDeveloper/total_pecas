class PhoneBook < ApplicationRecord
  belongs_to :user
  belongs_to :company
  belongs_to :phone
end
