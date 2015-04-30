json.array!(@heads) do |head|
  json.extract! head, :id, :name, :surname, :born_date, :born_place, :cod_fiscale, :address_id, :document_type, :document_number, :document_date
  json.url head_url(head, format: :json)
end
