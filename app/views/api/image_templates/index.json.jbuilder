json.array!(@image_templates) do |image_template|
  json.extract! image_template, :id, :image_id, :template_id
  json.url image_template_url(image_template, format: :json)
end
