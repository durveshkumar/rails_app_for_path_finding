json.array!(@trips) do |trip|
  json.extract! trip, :id, :pick_lat, :pick_lng, :pick_time, :pick_range, :drop_lat, :drop_lng, :drop_time, :drop_range
  json.url trip_url(trip, format: :json)
end
