class Article < ActiveRecord::Base
	
  belongs_to :category
  mount_uploader :image, ImageUploader
  
  validates :name, :presence => true

  has_many :image_articles
  has_many :images, through: :image_articles
end
