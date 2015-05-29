json.array!(@domains) do |domain|
  json.extract! domain, :id, :nome, :estensione, :costo, :mensilita, :tot
  json.url domain_url(domain, format: :json)
end
