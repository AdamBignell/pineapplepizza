json.extract! user, :id, :email, :password, :username, :points, :team, :created_at, :updated_at
json.url user_url(user, format: :json)