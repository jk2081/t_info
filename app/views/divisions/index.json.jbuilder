json.array!(@divisions) do |division|
  json.extract! division, :id, :name, :garden_id
  json.url division_url(division, format: :json)
end
