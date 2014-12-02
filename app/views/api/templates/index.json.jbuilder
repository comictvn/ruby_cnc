json.array!(@templates) do |template|
  json.extract! template, :id, :name, :note, :content, :designer, :demo
  json.url template_url(template, format: :json)
end
