json.array!(@section_yield_categories) do |section_yield_category|
  json.extract! section_yield_category, :id, :year, :yield_category_id, :section_id
  json.url section_yield_category_url(section_yield_category, format: :json)
end
