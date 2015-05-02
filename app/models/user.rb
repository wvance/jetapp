class User < ActiveRecord::Base
  # https://github.com/plataformatec/devise/wiki/How-To:-Add-a-default-role-to-a-User
  # USED FOR FACEBOOK LOGIN
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  belongs_to :role
  before_create :setDefaultUserRole

  has_many :ideas
  has_many :activities

  has_many :user_friendships

  # RAILS 3 WAY
  # has_many :friends, ->{ where() } through: :user_friendships, 
  #           conditions: {user_friendships: {state: "accepted"}}
  # RAILS 4 WAY
  # http://stackoverflow.com/questions/20307874/what-is-the-equivalent-of-conditions-in-has-many-rails-4
  has_many :friends, -> { where(user_friendships: {state: 'accepted'})}, :through => :user_friendships

  # USED FOR PENDING USER FRIENDSHIP ASSOCIATIONS
  # has_many :pending_user_friendships, class_name: "userFriendship", 
  #           foreign_key: :user_id,
  #           condition:{state: 'pending'}
  has_many :pending_user_friendships, -> { where(state: 'pending').order('firstName DESC')}, class_name: "userFriendship", foreign_key: :user_id

  has_many :pending_friends, through: :pending_user_friendships, source: :friend
	
  # has_many :comments
  # has_many :stickies
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 	mount_uploader :avatar, AvatarUploader

 	# validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :profileName,
            uniqueness: {
              :case_sensitive => false },
            format: {
              # PREVENTS POORLY FORMATED profile names
              with: /\A[a-zA-Z0-9_\-]+\z/,
              message: 'May only contain; AlphaNumeric, hyphen, and underscore characters.'
            }

  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'profileName'
  # https://github.com/plataformatec/devise/wiki/How-To:-Allow-users-to-sign-in-using-their-username-or-email-address
  attr_accessor :login
  
  # FIX THIS LATER
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where(["lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions.to_hash).first
    end
  end

  def fullName
    firstName + " " +lastName  
  end

 
  def createActivity(item, action)
    activity = activities.new 
    activity.targetable = item
    activity.action = action
    activity.save
    activity
  end 

  # If they auth from Omniauth then either find them or create them
  def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  user.email = auth.info.email
  user.password = Devise.friendly_token[0,20]
  user.remote_avatar_url = auth.info.image
  end
  end
   
  # If they don't give us a required parameter then we do this
  def self.new_with_session(params, session)
  super.tap do |user|
  if data = session["devise.facebook_data"]
  data.merge!(session["devise.facebook_data"]["info"])
  data.merge!(session["devise.facebook_data"]["extra"]["raw_info"])
  user.email = data["email"] if user.email.blank?
  user.provider = data["provider"] if user.provider.blank?
  user.uid = data["uid"] if user.uid.blank?
  end
  end
  end

  private
  def setDefaultUserRole
    self.role ||= Role.find_by_name('registered')
  end
  # USED FOR PROFILE PICTURE: LIBRARY
   include Gravtastic
	gravtastic :size => 50,
						 :default => 'mm'
end
