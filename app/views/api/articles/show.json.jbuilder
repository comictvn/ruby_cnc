json.extract! @article, :id, :name, :description, :content, :active, :category_id, :created_at, :updated_at, :image_url
if @article.tags.nil?
	@tags = []
else
	@tags = @article.tags.split(",")
end
json.tags @tags.each do |tag|
	json.tag tag
end
json.articles @articles.each do |article|
	json.extract! article, :id, :name, :description, :content, :active, :category_id, :category, :image_url, :created_at
end