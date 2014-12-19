class Image < ActiveRecord::Base
	has_many :image_articles
	has_many :image_templates
	has_many :articles, through: :image_articles
	has_many :templates, through: :image_templates
	mount_uploader :image, ImageUploader
end
