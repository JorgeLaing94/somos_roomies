json.array!(@properties) do |property|
  json.extract! property, :id, :title, :description, :city, :price, :address
  json.url property_url(property, format: :json)
end
