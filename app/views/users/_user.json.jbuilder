json.extract! user, :id, :role_id_id, :first_name, :last_name, :email, :telephone, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
