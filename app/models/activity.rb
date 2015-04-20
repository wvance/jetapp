class Activity < ActiveRecord::Base
	belongs_to :user
	belongs_to :targetable, polymorphic: true

	def self.for_user(user, options={})
		# options[:page] || 1
		friend_ids = user.friends.map(&:id).push(user.id)
		collection = where("user_id in (?)", friend_ids).
		order("created_at desc").all

	end
end
