class User < ApplicationRecord
  has_and_belongs_to_many :tasks
  accepts_nested_attributes_for :tasks
  belongs_to :role
  has_secure_password
  validates :password, presence: true, allow_nil: true
  validates :first_name, presence: true, length: { minimum: 2 } 
  validates :last_name, presence: true, length: { minimum: 2 } 
  validates :email, presence: true, uniqueness: true, length: { minimum: 5 } 
  validates :telephone, presence: true, length: { minimum: 5 } 
end
