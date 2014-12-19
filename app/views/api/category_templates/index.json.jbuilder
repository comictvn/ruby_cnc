json.array!(@category_templates) do |category_template|
  json.extract! category_template, :id, :name, :content, :parent, :active
  json.url category_template_url(category_template, format: :json)
end
