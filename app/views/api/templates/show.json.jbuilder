json.extract! @template, :id, :name, :note, :content, :designer, :demo, :created_at, :updated_at
json.images @template.image_templates do |image|
	json.extract! image.image, :image_url
end