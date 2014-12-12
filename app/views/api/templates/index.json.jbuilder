json.array!(@templates) do |template|
  json.extract! template, :id, :name, :note, :content, :designer, :image_url, :demo, :created_at
end
