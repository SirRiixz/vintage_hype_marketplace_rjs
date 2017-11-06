class Post < ApplicationRecord
  include ImageUploader[:image] # adds an `image` virtual attribute

  validates :description, presence: true
end
