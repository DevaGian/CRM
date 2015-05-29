json.array!(@services) do |service|
  json.extract! service, :id, :tipo, :cu, :q, :mensilita, :tot, :attivazione
  json.url service_url(service, format: :json)
end
