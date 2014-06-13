class Comedian < ActiveRecord::Base

  belongs_to :user

  attr_accessible :bio, :image, :user_id, :video, :stage_name

  mount_uploader  :image, ImageUploader

  validates :stage_name, presence: true, uniqueness: true, length: { in: 2..255 }

  extend FriendlyId
  friendly_id :stage_name, use: :slugged

end
