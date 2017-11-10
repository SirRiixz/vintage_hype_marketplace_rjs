class Post < ApplicationRecord
  include ImageUploader::Attachment.new(:image)
  
  belongs_to :profile

end
