class User < ActiveRecord::Base

  has_one :comedian, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  accepts_nested_attributes_for :comedian

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :is_comedian, :password, :password_confirmation, :remember_me

  validates :email, presence: true, uniqueness: true, length: { in: 2..255 }
  validates :username, presence: true, uniqueness: true, length: { in: 2..255 }
  validates :username, presence: true, format: { with: /\A(?=.{2,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])\Z/ }

#^(?=.{2,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$
# └─────┬────┘└───┬──┘└─────┬─────┘└─────┬─────┘ └───┬───┘
#       │         │         │            │           no _ or . at the end
#       │         │         │            │
#       │         │         │            allowed characters
#       │         │         │
#       │         │         no __ or _. or ._ or .. inside
#       │         │
#       │         no _ or . at the beginning
#       │
#       username is 2-20 characters long

  validates_inclusion_of :is_comedian, :in => [true, false]

  after_create :create_comedian
  after_update :update_comedian

  def role?(role)
    self.role.to_s == role.to_s
  end

  def is_comedian?
    return self.is_comedian
  end

  def create_comedian
    if self.is_comedian?
      @comedian = Comedian.new
      @comedian.user_id = self.id
      @comedian.stage_name = self.username
      @comedian.save   
    end
  end

  def update_comedian
    if self.is_comedian? && !self.comedian
      @comedian = Comedian.new
      @comedian.user_id = self.id
      @comedian.stage_name = self.username
      @comedian.save  
    end
    if !self.is_comedian && self.comedian
      self.comedian.destroy
    end
  end

end
