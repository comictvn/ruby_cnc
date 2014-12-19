class ImageTemplate < ActiveRecord::Base
  belongs_to :image
  belongs_to :template
end
