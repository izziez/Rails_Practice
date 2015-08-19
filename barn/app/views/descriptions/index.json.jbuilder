json.array!(@descriptions) do |description|
  json.extract! description, :id, :name, :color, :breed, :height, :markings
  json.url description_url(description, format: :json)
end
