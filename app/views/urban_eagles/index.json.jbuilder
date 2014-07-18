json.array!(@urban_eagles) do |urban_eagle|
  json.extract! urban_eagle, :id
  json.url urban_eagle_url(urban_eagle, format: :json)
end
