json.array!(@stadia) do |stadium|
  json.extract! stadium, :id, :nombre, :direccion
  json.url stadium_url(stadium, format: :json)
end
