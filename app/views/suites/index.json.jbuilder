json.array!(@suites) do |suite|
  json.extract! suite, :id, :cpu_p, :ram_p, :hd_p, :nas_p, :cpu_q, :ram_q, :hd_q, :nas_q, :base, :mensilita, :attivazione, :tot, :costumer_id
  json.url suite_url(suite, format: :json)
end
