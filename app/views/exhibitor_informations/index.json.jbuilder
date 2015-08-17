json.array!(@exhibitor_informations) do |exhibitor_information|
  json.extract! exhibitor_information, :id, :header, :content
  json.url exhibitor_information_url(exhibitor_information, format: :json)
end
