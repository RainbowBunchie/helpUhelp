class Status < ApplicationRecord
	has_many :status_task_users, dependent: :destroy
end
