json.extract! post, :id, :status, :title, :body, :created_at, :updated_at
json.url post_url(post, format: :json)
json.body post.body.to_s
