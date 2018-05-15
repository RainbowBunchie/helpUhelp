class Task < ApplicationRecord
  has_many :status_task_users, dependent: :destroy
  has_many :users, through: :status_task_users

  scope :future, -> {where("date >= ?", Date.today)}
  scope :past, -> {where("date < ?", Date.today)}

  scope :with_status, lambda {|status_id| joins(:status_task_users).where('status_task_users.status_id=?', status_id) }
  scope :pending, -> { joins(:status_task_users).where('status_task_users.status_id=?', 1) }
  scope :declined, -> { where(status_id: 2) }
  #scope :confirmed, -> { where(status_id: 3) }

  scope :pending_future, -> {Task
    .joins("INNER JOIN status_task_users ON status_task_users.task_id = tasks.id")
    .where("status_id = 1")
    .order(time: :desc)}

  scope :confirmed, ->{ Task
    .order(time: :asc)
    .joins("INNER JOIN status_task_users ON status_task_users.task_id = tasks.id")
    .where("status_id = 3")}

 scope :not_pending_and_no_application_future, ->{ Task.future.order(time: :desc) - Task.confirmed - Task.pending_future }

 scope :user_assigned, -> (user) {Task
   .order(time: :desc)
   .joins("INNER JOIN status_task_users ON status_task_users.task_id = tasks.id")
   .where("user_id = ? AND status_id = 3", user.id)
   }

  scope :user_pending, -> (user) {Task
   .joins("INNER JOIN status_task_users ON status_task_users.task_id = tasks.id")
   .where("user_id = ? AND status_id = 1", user.id)
   .order(time: :desc)}

  scope :user_open_future, -> (user){ Task.future.order(time: :desc) - Task.confirmed - Task.user_pending(user)}


  validates :description, presence: true, length: { minimum: 30 }
  validates :title, presence: true, length: { maximum: 20 }
  validates :place, presence: true, length: { minimum: 2 }
  validates :no_of_people, presence: true
end
