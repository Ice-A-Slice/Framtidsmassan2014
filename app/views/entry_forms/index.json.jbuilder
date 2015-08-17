json.array!(@entry_forms) do |entry_form|
  json.extract! entry_form, :id, :contact, :organization, :telephone, :email, :food_amount, :food_other, :electricity, :internet, :seminar
  json.url entry_form_url(entry_form, format: :json)
end
