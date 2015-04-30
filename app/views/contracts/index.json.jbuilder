json.array!(@contracts) do |contract|
  json.extract! contract, :id, :company_id, :referent_id, :data, :activation_data
  json.url contract_url(contract, format: :json)
end
