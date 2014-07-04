json.array!(@gardens) do |garden|
  json.extract! garden, :id, :name, :garden_group_id
  json.url garden_url(garden, format: :json)
end
