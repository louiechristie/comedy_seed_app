class User < ActiveRecord::Base

  has_one :comedian
  has_many :rating

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :is_comedian, :remember_me

  validates :email, presence: true, uniqueness: true, length: { in: 2..255 }
  validates :username, presence: true, uniqueness: true, length: { in: 2..255 }

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
