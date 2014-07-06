json.array!(@news) do |news|
  json.extract! news, :id, :titulo, :fecha, :hora, :contenido, :foto
  json.url news_url(news, format: :json)
end
