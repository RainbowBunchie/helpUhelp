json.extract! task, :id, :description, :date, :time, :place, :assined, :no_of_people, :created_at, :updated_at
json.url task_url(task, format: :json)
