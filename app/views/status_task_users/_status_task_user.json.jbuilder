json.extract! status_task_user, :id, :user_id, :task_id, :status_id, :created_at, :updated_at
json.url status_task_user_url(status_task_user, format: :json)
