class Task < ApplicationRecord
  has_and_belongs_to_many :users
  accepts_nested_attributes_for :users
  validates :description, presence: true, length: { minimum: 30 }
  validates :title, presence: true, length: { maximum: 20 }
  validates :place, presence: true, length: { minimum: 2 }
  validates :no_of_people, presence: true 
end
