class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :password_digest, type: String

  has_secure_password # okay, well it better have a password_digest

  validates :email, uniqueness: true
  validates :password, confirmation: true
end
