class User < ApplicationRecord
  belongs_to :role
  has_many :status_task_users, dependent: :destroy
  has_secure_password
  validates_confirmation_of :password
  validates :password, presence: true, allow_nil: true
  validates :first_name, presence: true, length: { minimum: 2 } 
  validates :last_name, presence: true, length: { minimum: 2 } 
  validates :email, presence: true, uniqueness: true, length: { minimum: 5 } 
  validates :telephone, presence: true, length: { minimum: 5 } 
end
