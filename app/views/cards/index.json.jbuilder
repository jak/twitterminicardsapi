json.array!(@cards) do |card|
  json.card do
    json.extract! card, :id, :handle, :bio, :avatar
    json.url card_url(card, format: :json)
  end
end
