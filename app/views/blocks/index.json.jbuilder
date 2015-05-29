json.array!(@blocks) do |block|
  json.extract! block, :id, :tipo, :cu, :q, :mensilita, :tot, :attivazione
  json.url block_url(block, format: :json)
end
