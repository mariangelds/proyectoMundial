json.array!(@games) do |game|
  json.extract! game, :id, :fecha
  json.url game_url(game, format: :json)
end
