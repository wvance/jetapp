class ActivitiesController < ApplicationController
  def index
  	# DISPLAY ALL MINE AND FRIENDS ACTIVITIES. 
  	# TO GET FRIENDS ID's DO: 
  	# MAP RETURNS user.id for each user and returns array of id's
  	# friend_ids = current_user.friends.map(&:id)
  	# @activities = Activity.where("user_id in (?)", friend_ids.push(current_user.id)).order("created_at desc").all

  	@activities = Activity.where(current_user.id).all
  end
end
