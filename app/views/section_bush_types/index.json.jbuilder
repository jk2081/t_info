json.array!(@section_bush_types) do |section_bush_type|
  json.extract! section_bush_type, :id, :year, :section_id, :bush_type_id
  json.url section_bush_type_url(section_bush_type, format: :json)
end
