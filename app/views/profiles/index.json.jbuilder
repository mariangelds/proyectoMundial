json.array!(@profiles) do |profile|
  json.extract! profile, :id, :nombre, :telefono, :direccion, :fecha_nac, :compañia, :twitter, :facebook, :user_id
  json.url profile_url(profile, format: :json)
end
