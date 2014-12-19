class Template < ActiveRecord::Base
	
	has_many :image_templates
  	has_many :images, through: :image_templates
  	belongs_to :category_template
  	mount_uploader :image, ImageUploader
end
