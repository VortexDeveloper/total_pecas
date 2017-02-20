class Advertisement < ApplicationRecord
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  belongs_to :owner, class_name: User
  # belongs_to :user

  has_many :interests
  has_many :interested_users, through: :interests

  has_one :product
  has_one :service
end
