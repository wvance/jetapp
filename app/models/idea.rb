class Idea < ActiveRecord::Base
	has_many :comments
	has_many :stickies
	# has_many :users
	SECTORS = [
    ['Technology','Technology'],
    ['Energy','Energy'],
    ['Bio-Tech','Bio-Tech']
  ]

	belongs_to :user

	validates :name, presence: true
	mount_uploader :picture, PictureUploader
	
end
