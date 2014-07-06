json.array!(@teams) do |team|
  json.extract! team, :id, :nombre, :bandera
  json.url team_url(team, format: :json)
end
