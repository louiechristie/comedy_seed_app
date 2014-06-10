class User < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :video

  validates :email, presence: true, uniqueness: true, length: { in: 2..255 }

  validates :name, presence: true, length: { in: 2..255 }




end
