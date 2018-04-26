class Task < ApplicationRecord
  has_many :status_task_users, dependent: :destroy

  validates :description, presence: true, length: { minimum: 30 }
  validates :title, presence: true, length: { maximum: 20 }
  validates :place, presence: true, length: { minimum: 2 }
  validates :no_of_people, presence: true 
end
