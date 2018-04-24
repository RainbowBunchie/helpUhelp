class User < ApplicationRecord
  has_and_belongs_to_many :tasks
  accepts_nested_attributes_for :tasks
  belongs_to :role
  has_secure_password
  validates :password, presence: true, allow_nil: true
end
