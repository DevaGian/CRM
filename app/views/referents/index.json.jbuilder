json.array!(@referents) do |referent|
  json.extract! referent, :id, :name, :surname, :role, :phone, :mail
  json.url referent_url(referent, format: :json)
end
