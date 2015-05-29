json.array!(@web_sites) do |web_site|
  json.extract! web_site, :id, :padre, :servizio, :descrizione, :importo, :attivazione, :mensilita
  json.url web_site_url(web_site, format: :json)
end
