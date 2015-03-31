class Idea < ActiveRecord::Base
	validates :name, presence: true
	mount_uploader :picture, PictureUploader
end
