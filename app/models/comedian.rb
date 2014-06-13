class Comedian < ActiveRecord::Base

  belongs_to :user

  attr_accessible :bio, :image, :user_id, :video

  mount_uploader  :image, ImageUploader

end
