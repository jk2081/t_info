json.array!(@section_prune_types) do |section_prune_type|
  json.extract! section_prune_type, :id, :year, :section_id, :prune_type_id
  json.url section_prune_type_url(section_prune_type, format: :json)
end
