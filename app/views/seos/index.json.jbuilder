json.array!(@seos) do |seo|
  json.extract! seo, :id, :tipo, :parole, :importo, :attivazione, :mensilita
  json.url seo_url(seo, format: :json)
end
