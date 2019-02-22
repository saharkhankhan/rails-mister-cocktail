class PhotoUploader < CarrierWave::Uploader::Base
# app/uploaders/photo_uploader.rb
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :thumnail do
    resize_to_fit 256, 256
  end
end
