json.array!(@bush_types) do |bush_type|
  json.extract! bush_type, :id, :name
  json.url bush_type_url(bush_type, format: :json)
end
