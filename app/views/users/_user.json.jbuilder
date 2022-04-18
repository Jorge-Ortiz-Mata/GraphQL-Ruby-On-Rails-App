json.extract! user, :id, :username, :age, :location, :created_at, :updated_at
json.url user_url(user, format: :json)
