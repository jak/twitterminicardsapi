json.cards do
  json.array!(@cards) do |card|
    json.extract! card, :id, :handle, :bio, :avatar
    json.hashtags card.hashtags.map { |h| h.id }
  end
end
json.hashtags do
  json.array!(@hashtags) do |hashtag|
  json.extract! hashtag, :id, :title, :print, :card_id
end
end
