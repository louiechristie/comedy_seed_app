class Rating < ActiveRecord::Base
  attr_accessible :comedian_id, :score, :user_id

  belongs_to :user
  belongs_to :comedian

  validates :comedian_id, presence: true, numericality: { only_integer: true }
  validates :score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates :user_id, presence: true, numericality: { only_integer: true }


end
