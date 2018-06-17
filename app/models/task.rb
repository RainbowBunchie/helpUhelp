class Task < ApplicationRecord
  has_many :status_task_users, dependent: :destroy
  has_many :users, through: :status_task_users

  scope :future, -> { where("date >= ?", Date.today) }
  scope :past, -> { where("date < ?", Date.today) }

  # scope :with_status, lambda {|status_id| joins(:status_task_users).where('status_task_users.status_id=?', status_id) }
  scope :pending, -> { joins(:status_task_users).where('status_task_users.status_id=?', 1).order(time: :desc) }
  scope :declined, -> { joins(:status_task_users).where('status_task_users.status_id=?', 2).order(time: :desc) }
  scope :confirmed, -> { joins(:status_task_users).where('status_task_users.status_id=?', 3).order(time: :desc) }

  validates :description, presence: true, length: { minimum: 30 }
  validates :title, presence: true, length: { maximum: 20 }
  validates :place, presence: true, length: { minimum: 2 }
  validates :no_of_people, presence: true
end
