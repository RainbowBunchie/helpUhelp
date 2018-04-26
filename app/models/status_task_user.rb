class StatusTaskUser < ApplicationRecord
  belongs_to :user
  belongs_to :task
  belongs_to :status
  has_many :users
  has_many :tasks
  has_many :statuses
end
