class User < ActiveRecord::Base

  has_one :comedian

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  validates :email, presence: true, uniqueness: true, length: { in: 2..255 }

  validates :name, presence: true, length: { in: 2..255 }


  extend FriendlyId
  friendly_id :name, use: :slugged

  def role?(role)
    self.role.to_s == role.to_s
  end

end
