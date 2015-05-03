class Idea < ActiveRecord::Base
	has_many :comments
	has_many :stickies
	# has_many :users
	SECTORS = [
    ['Defense & Security','Defense & Security'],
    ['Infrastructure','Infrastructure'],
    ['Communications','Communications'],
    ['Energy/Utilities','Energy/Utilities'],
    ['Chemicals','Chemicals'],
    ['Construction','Construction'],
    ['Entertainment','Entertainment'],
    ['Financial','Financial'],
    ['Government','Government'],
    ['Healthcare','Healthcare'],
    ['Manufacturing','Manufacturing'],
    ['Retail','Retail'],
    ['Technology','Technology'],
    ['Other', 'Other']
  ]

	belongs_to :user

	validates :name, presence: true
	mount_uploader :picture, PictureUploader
	
end
