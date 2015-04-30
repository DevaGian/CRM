json.array!(@addresses) do |address|
  json.extract! address, :id, :route, :number, :cap, :prov, :city
  json.url address_url(address, format: :json)
end
