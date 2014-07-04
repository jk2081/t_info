json.array!(@section_yields) do |section_yield|
  json.extract! section_yield, :id, :budget, :actual, :year, :section_id
  json.url section_yield_url(section_yield, format: :json)
end
