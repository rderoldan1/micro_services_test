json.array!(@sesiones) do |sesion|
  json.extract! sesion, :id, :token
  json.url sesion_url(sesion, format: :json)
end
