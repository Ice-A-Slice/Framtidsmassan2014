json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :time, :room, :exhibitor
  json.url schedule_url(schedule, format: :json)
end
