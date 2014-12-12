json.array!(@articles) do |article|
  json.extract! article, :id, :name, :description, :content, :active, :category_id, :category, :image_url, :created_at
  tag = "%#{article.tags}%"
  ariticles_cate = @ariticles_cate.where("tags like ?", tag).where.not(id: article.id)
  json.ariticles_cate ariticles_cate
end
