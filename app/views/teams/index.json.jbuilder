json.array!(@teams) do |team|
  json.extract! team, :id, :nombre, :bandera, group_id
  json.url team_url(team, format: :json)
end
