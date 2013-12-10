json.array!(@datapoints) do |datapoint|
  json.extract! datapoint, :value, :property_id, :device_id
  json.url datapoint_url(datapoint, format: :json)
end