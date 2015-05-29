json.array!(@costumer_mails) do |costumer_mail|
  json.extract! costumer_mail, :id, :nome, :dominio, :mb, :mensilita
  json.url costumer_mail_url(costumer_mail, format: :json)
end
