json.array!(@articles) do |article|
  json.extract! article, :id, :name, :description, :content, :active, :category_id, :created_at
  json.url article_url(article, format: :json)
end
