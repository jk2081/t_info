json.array!(@section_divisions) do |section_division|
  json.extract! section_division, :id, :year, :section_id, :division_id
  json.url section_division_url(section_division, format: :json)
end
