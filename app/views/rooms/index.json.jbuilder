json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :hotel, :link, :lat, :lon, :min, :max, :phone, :address
  json.url room_url(room, format: :json)
end
