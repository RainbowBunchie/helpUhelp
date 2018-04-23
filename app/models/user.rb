class User < ApplicationRecord
  belongs_to :role
  has_secure_password
  validates_confirmation_of :password
end
