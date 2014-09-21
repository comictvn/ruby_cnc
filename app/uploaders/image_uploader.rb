class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  
  process :tags => ["photo_album_sample"]
  process :convert => "jpg"

  version :thumbnail do
    cloudinary_transformation :quality => 80          
  end
end
