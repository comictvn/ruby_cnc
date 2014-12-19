class ImageArticle < ActiveRecord::Base
  belongs_to :article
  belongs_to :image
end
