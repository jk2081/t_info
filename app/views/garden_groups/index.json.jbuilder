json.array!(@garden_groups) do |garden_group|
  json.extract! garden_group, :id, :name
  json.url garden_group_url(garden_group, format: :json)
end
