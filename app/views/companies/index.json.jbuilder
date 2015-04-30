json.array!(@companies) do |company|
  json.extract! company, :id, :referent_id, :address_id, :ragione_sociale, :piva, :phone_number, :fax, :mail, :iban
  json.url company_url(company, format: :json)
end
