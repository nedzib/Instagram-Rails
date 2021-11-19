json.extract! comment, :id, :user, :postID, :body, :created_at, :updated_at
json.url comment_url(comment, format: :json)
