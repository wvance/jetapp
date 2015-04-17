class User < ActiveRecord::Base
  has_many :ideas
	# has_many :comments
  # has_many :stickies
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 	mount_uploader :avatar, AvatarUploader

 	validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  # USED FOR PROFILE PICTURE: LIBRARY
 #  include Gravtastic
	# gravtastic :size => 50,
	# 					 :default => 'mm'
end
