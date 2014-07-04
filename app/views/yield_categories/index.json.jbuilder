json.array!(@yield_categories) do |yield_category|
  json.extract! yield_category, :id, :name
  json.url yield_category_url(yield_category, format: :json)
end
