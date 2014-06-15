class Review < ActiveRecord::Base
  attr_accessible :user_id, :content, :comedian_id

  belongs_to :user
  belongs_to :comedian

  validates :comedian_id, presence: true, numericality: { only_integer: true }
  validates :content, presence: true
  validates :user_id, presence: true, numericality: { only_integer: true }

end
