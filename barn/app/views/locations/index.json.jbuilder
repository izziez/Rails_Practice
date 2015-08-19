json.array!(@locations) do |location|
  json.extract! location, :id, :stall_number, :integer, :pasture_number, :integer, :Feeding_Instructions_AM, :text, :Feeding_Instructions_Lunch, :text, :Feeding_Instructions_PM, :text, :General_Behavior_Notes, :text
  json.url location_url(location, format: :json)
end
