class User < ActiveRecord::Base
  # https://github.com/plataformatec/devise/wiki/How-To:-Add-a-default-role-to-a-User
  belongs_to :role
  before_create :setDefaultUserRole

  has_many :ideas
  has_many :activities
	# has_many :comments
  # has_many :stickies
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:login]

 	mount_uploader :avatar, AvatarUploader

 	validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :profileName, presence: true,
            uniqueness: true,
            format: {
              # PREVENTS POORLY FORMATED profile names
              with: /\A[a-zA-Z0-9_\-]+\z/,
              message: 'May only contain; AlphaNumeric, hyphen, and underscore characters.'
            }

  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'profileName'
  attr_accessor :login
  def login=(login)
    @login = login
  end

  def login
    @login || self.profileName || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where(["lower(profileName) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions.to_hash).first
    end
  end

  def createActivity(item, action)
    activity = activities.new 
    activity.targetable = item
    activity.action = action
    activity.save
    activity
  end 

  private
  def setDefaultUserRole
    self.role ||= Role.find_by_name('registered')
  end
  # USED FOR PROFILE PICTURE: LIBRARY
  #  include Gravtastic
	# gravtastic :size => 50,
	# 					 :default => 'mm'
end
