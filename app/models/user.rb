class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me


  attr_accessible :bio, :email, :name, :video, :user_image

  validates :email, presence: true, uniqueness: true, length: { in: 2..255 }

  validates :name, presence: true, length: { in: 2..255 }

  mount_uploader  :user_image, UserImageUploader

end
