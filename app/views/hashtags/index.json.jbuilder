json.array!(@hashtags) do |hashtag|
  json.extract! hashtag, :id, :title, :print
  json.url hashtag_url(hashtag, format: :json)
end
