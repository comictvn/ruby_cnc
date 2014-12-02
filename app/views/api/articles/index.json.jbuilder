json.array!(@articles) do |article|
  json.extract! article, :id, :name, :description, :content, :active, :category_id, :category, :image_url, :created_at
  json.url article_url(article, format: :json)
end
