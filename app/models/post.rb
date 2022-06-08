class Post < ApplicationRecord

    include ImageUploader::Attachment(:image)
     has_and_belongs_to_many :ingredients

end