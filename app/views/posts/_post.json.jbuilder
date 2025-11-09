json.extract! post, :id, :titulo, :excerpt, :body, :created_at, :updated_at
json.url post_url(post, format: :json)
