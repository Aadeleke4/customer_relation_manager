class Customer < ApplicationRecord
  has_one_attached :image

  ## validations
  validates :full_name, presence: true
  validates :phone_number,
  validates :email_address,


end
