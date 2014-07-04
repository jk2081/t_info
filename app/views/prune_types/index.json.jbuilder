json.array!(@prune_types) do |prune_type|
  json.extract! prune_type, :id, :name
  json.url prune_type_url(prune_type, format: :json)
end
