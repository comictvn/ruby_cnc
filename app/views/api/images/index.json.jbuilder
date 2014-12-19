json.array!(@images) do |image|
  json.extract! image, :id, :name, :image
  json.url image_url(image, format: :json)
end
