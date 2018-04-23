class User < ApplicationRecord
  has_and_belongs_to_many :tasks
  belongs_to :role
  has_secure_password
end
