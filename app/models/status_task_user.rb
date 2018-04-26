class StatusTaskUser < ApplicationRecord
  belongs_to :user
  belongs_to :task
  belongs_to :status
end
