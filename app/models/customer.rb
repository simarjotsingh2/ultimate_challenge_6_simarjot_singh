class Customer < ApplicationRecord
  has_one_attached :image

  validates :full_name, presence: true
  validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
  validates :phone_number, presence: true
  has_many :orders, class_name: "Order", foreign_key: "customer_id"

  def self.ransackable_associations(auth_object = nil)
    # Add your actual associations here
    [ "image_attachment", "image_blob", "full_name", "email_address", "phone_number", "notes" ]
  end
  def self.ransackable_attributes(auth_object = nil)
    [ "name", "email", "created_at", "updated_at" ] # Add other relevant attributes
    super + ["orders_id"]
  end
end
