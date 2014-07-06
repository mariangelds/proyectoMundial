json.array!(@statistics) do |statistic|
  json.extract! statistic, :id, :juegos, :ganados, :perdidos, :empatados, :goles, :puntaje
  json.url statistic_url(statistic, format: :json)
end
