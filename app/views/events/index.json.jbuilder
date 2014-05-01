json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :start_date, :end_date, :start_time, :end_time, :organizer, :venue
  json.url event_url(event, format: :json)
end
