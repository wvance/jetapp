class Comment < ActiveRecord::Base
	belongs_to :idea
	belongs_to :user
	validates :body, :user_id, :idea_id, presence: true
end
