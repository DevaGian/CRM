json.array!(@billings) do |billing|
  json.extract! billing, :id, :ragione_sociale, :address_id, :payment_mode, :bank, :agency, :iban
  json.url billing_url(billing, format: :json)
end
