json.array!(@properties) do |property|
  json.extract! property, :name, :device_id
  json.url property_url(property, format: :json)
end