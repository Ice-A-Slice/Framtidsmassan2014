json.array!(@info_texts) do |info_text|
  json.extract! info_text, :id, :title, :content
  json.url info_text_url(info_text, format: :json)
end
