class User < ApplicationRecord
  validates :name, :dob, :email, :phone_number, :address, presence: true

  validates :email, 
            uniqueness: true, 
            format: { with: URI::MailTo::EMAIL_REGEXP, message: "is not a valid email" }
end