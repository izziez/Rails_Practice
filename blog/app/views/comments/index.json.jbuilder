json.array!(@comments) do |comment|
  json.extract! comment, :id, :author, :comment_entry, :blog_post_id, :integer
  json.url comment_url(comment, format: :json)
end
