json.array!(@newsfeeds) do |newsfeed|
  json.extract! newsfeed, :id, :title, :content, :timestamp
  json.url newsfeed_url(newsfeed, format: :json)
end
