class Comedian < ActiveRecord::Base

  belongs_to :user
  has_many :ratings

  attr_accessible :bio, :image, :user_id, :video, :stage_name

  mount_uploader  :image, ImageUploader

  validates :stage_name, presence: true, uniqueness: true, length: { in: 2..255 }

  extend FriendlyId
  friendly_id :stage_name, use: :slugged

  def avg_rating
    self.ratings.first.try(:rating)

    total = 0.0

    self.ratings.each do |rating|
      total += rating.rating
    end

    count = self.ratings.count

    total/count
  end

end
