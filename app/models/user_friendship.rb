class UserFriendship < ActiveRecord::Base
	belongs_to :user
	# NOT CONVINCED
	belongs_to :friend , class_name:'User', foreign_key: 'friend_id'

	# ATTR ACCESSIBLE IN CONTROLLER
	# USER AND FRIEND user_id, friend_id
end
