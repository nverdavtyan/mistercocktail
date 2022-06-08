class ImageUploader < Shrine
    plugin :validation_helpers
 
  Attacher.validate do
    validate_max_size 10 * 1024 * 1024, message: -> (max) { [:too_large, max: max] }
    validate_mime_type %w[image/jpeg image/png], message: :not_image
  end
  end