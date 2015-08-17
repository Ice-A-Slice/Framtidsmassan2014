json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :telephone_number, :email
  json.url contact_url(contact, format: :json)
end
