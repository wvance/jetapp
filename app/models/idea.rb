class Idea < ActiveRecord::Base
	has_many :comments
	has_many :users
	validates :name, presence: true
	mount_uploader :picture, PictureUploader
	
end
