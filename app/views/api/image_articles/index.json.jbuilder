json.array!(@image_articles) do |image_article|
  json.extract! image_article, :id, :articles_id, :images_id
  json.url image_article_url(image_article, format: :json)
end
