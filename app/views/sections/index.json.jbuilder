json.array!(@sections) do |section|
  json.extract! section, :id, :code, :name, :area, :yop_start, :yop_end, :garden_id
  json.url section_url(section, format: :json)
end
