class User < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :video, :user_image

  validates :email, presence: true, uniqueness: true, length: { in: 2..255 }

  validates :name, presence: true, length: { in: 2..255 }

  mount_uploader  :user_image, UserImageUploader

end
