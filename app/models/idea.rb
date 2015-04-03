class Idea < ActiveRecord::Base
	has_many :comments
	validates :name, presence: true
	mount_uploader :picture, PictureUploader
	
end
