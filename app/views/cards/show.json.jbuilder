json.card do
  json.extract! @card, :id, :handle, :bio, :avatar, :created_at, :updated_at
  json.hashtags @card.hashtags.map { |h| h.id }
end
json.hashtags do
  json.array!(@card.hashtags) do |hashtag|
    json.extract! hashtag, :id, :title, :print, :card_id
  end
end
