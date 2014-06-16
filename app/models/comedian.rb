class Comedian < ActiveRecord::Base

  belongs_to :user
  has_many :ratings
  has_many :reviews

  attr_accessible :bio, :image, :user_id, :video, :stage_name

  mount_uploader  :image, ImageUploader

  validates :stage_name, presence: true, uniqueness: true, length: { in: 2..255 }
  validates :bio, length: { maximum: 8000 }
  validates :video, length: { maximum: 255 }

  extend FriendlyId
  friendly_id :stage_name, use: :slugged

  def avg_rating

    total = 0.0

    self.ratings.each do |rating|
      total += rating.score
    end

    count = self.ratings.count

    total/count
  end

end
