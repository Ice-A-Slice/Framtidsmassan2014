json.array!(@exhibitors) do |exhibitor|
  json.extract! exhibitor, :id, :title, :category_id, :position, :link
  json.url exhibitor_url(exhibitor, format: :json)
end
